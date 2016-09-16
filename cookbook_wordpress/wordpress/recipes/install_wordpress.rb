# Download WordPress

execute 'Download WordPress' do
  cwd '/home/vagrant/'
  command 'wget http://wordpress.org/latest.tar.gz'
  action :run
  not_if { ::File.exist?('/home/vagrant/latest.tar.gz') }
end

# untar latest.tar.gz

execute 'untar latest.tar.gz' do
  cwd '/home/vagrant/'
  command 'tar -xvzf /home/vagrant/latest.tar.gz'
  action :run
  not_if { ::File.exist?('/home/vagrant/wordpress') }
end

# update system
execute 'update system' do
  command 'apt-get update'
  action :run
  not_if { ::File.exist?('/var/lib/apt/periodic/update-success-stamp') }
end

# install php module

package 'php5-gd' do
  action :install
end

package 'libssh2-php' do
  action :install
end

# copy configuration file

execute 'copy wp-config-sample.php' do
  command 'cd /home/vagrant/wordpress/ ;
  cp -R wp-config-sample.php wp-config.php'
  action :run
  not_if { ::File.exist?('/home/vagrant/wordpress/wp-config.php') }
end

# add information of database in configuration file

template '/home/vagrant/wordpress/wp-config.php' do
  source 'wp-config.php.erb'
end

# Copy Files to the Document Root

execute 'Copy Files to the Document Root' do
  command 'rsync -avP /home/vagrant/wordpress/ /var/www/html/'
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
