# install apache2
package 'apache2' do
  action :install
end

# start service apache2
service 'apache2' do
  action [:enable, :start]
end
