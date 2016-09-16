include_recipe 'mysql2_chef_gem'

# Create a mysql database
mysql_database 'wordpress' do
  connection(
  host: '127.0.0.1',
  username: 'root',
  password: 'root'
  )
  action :create
end

mysql_connection_info = {
  host: '127.0.0.1',
  username: 'root',
  password: 'root'
}

# creating a user with all priviledges
mysql_database_user 'wordpressuser' do
  connection mysql_connection_info
  password 'password'
  database_name 'wordpress'
  host '127.0.0.1'
  privileges [:all]
  action [:create, :grant]
end
