# Setup MySQL with desired database
mysql_service 'mysql' do
  #version node['my_database']['database']['version'] if node['my_databse']['database']['version']
  bind_address node['my_database']['database']['host']
  port node['my_database']['database']['port'].to_s
  initial_root_password node['mysql']['server_root_password']
  data_dir node['mysql']['data_dir'] if node['mysql']['data_dir']
  action [:create, :start]
end

package 'php5-mysql' do
  action :install
end


