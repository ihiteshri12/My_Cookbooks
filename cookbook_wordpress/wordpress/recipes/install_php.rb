# install php
package 'php5' do
  action :install
end

package 'libapache2-mod-php5' do
  action :install
end

package 'php5-mcrypt' do
  action :install
end

cookbook_file '/etc/apache2/mods-enabled/dir.conf' do
  source 'dir.conf'
end

service 'apache2' do
  action :restart
end
