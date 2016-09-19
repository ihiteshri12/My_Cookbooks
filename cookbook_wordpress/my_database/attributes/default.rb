# wordpress database setting setting
default['my_database']['database']['host']     = '127.0.0.1'
default['my_database']['database']['name']     = 'wordpress'
default['my_database']['database']['user']     = 'wordpressuser'
default['my_database']['database']['password'] = 'password'

# Sets mysql root password if mysql is installed on same host
if node['my_database']['database']['host'] == '127.0.0.1'
  default['mysql']['server_root_password'] = 'root'
end

default['my_database']['database']['port'] = 3306

