mysqlpass = Chef::DataBagItem.load('mysql', 'rtpass')['password']
mysql_service 'mysqldefault' do
  initial_root_password mysqlpass['password']
  action [:create, :start]
end
