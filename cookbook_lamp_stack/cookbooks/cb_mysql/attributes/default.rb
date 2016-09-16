# Jira database settings
default['cb_mysql']['database']['host']     = '127.0.0.1'
default['cb_mysql']['database']['name']     = 'mysql'
default['cb_mysql']['database']['user']     = 'root'
default['cb_mysql']['database']['password'] = 'changeit'

# Sets mysql root password if mysql is installed on same host
if node['cb_mysql']['database']['host'] == '127.0.0.1'
  default['mysql']['server_root_password'] = 'root'
end

default['cb_mysql']['database']['port'] = 3306
