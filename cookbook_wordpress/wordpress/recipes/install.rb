# Download WordPress
execute 'Download WordPress' do
  cwd "#{Chef::Config[:file_cache_path]}"
  command 'wget http://wordpress.org/latest.tar.gz'
  action :run
  not_if { ::File.exist?("#{Chef::Config[:file_cache_path]}/latest.tar.gz") }
end

# untar latest.tar.gz
execute 'untar latest.tar.gz' do
  cwd "#{Chef::Config[:file_cache_path]}"
  command 'tar -xvzf latest.tar.gz'
  action :run
  not_if { ::File.exist?("#{Chef::Config[:file_cache_path]}/wordpress") }
end

# update system
execute 'update system' do
  command 'apt-get update'
  action :run
end

# install php module
package 'php5-gd' do
  action :install
end

package 'libssh2-php' do
  action :install
end

# add information of database in configuration file
template "#{Chef::Config[:file_cache_path]}/wordpress/wp-config.php" do
  source 'wp-config.php.erb'
end

# Copy Files to the Document Root
execute 'Copy Files to the Document Root' do
  command 'rsync -avP "#{Chef::Config[:file_cache_path]}/wordpress/" /var/www/html/'
  action :run
  not_if { ::File.exist?('/var/www/html/wp-config.php') }
end

# change the permission of files
execute 'change permission of files' do
  command 'chown -R root:www-data /var/www/html/*'
  action :run
end

# create a directory
directory '/var/www/html/wp-content/uploads' do
  group 'www-data'
  action :create
end
