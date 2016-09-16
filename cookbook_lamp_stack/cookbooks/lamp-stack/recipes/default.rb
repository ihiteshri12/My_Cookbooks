#
# Cookbook Name:: lamp-stack
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute 'update' do
  command 'sudo apt-get update'
  action :run
end

include_recipe 'lamp-stack::apache'
include_recipe 'lamp-stack::mysql'
include_recipe 'lamp-stack::php'
