# Recipe to install and configure MySQL database
#
# Cookbook Name:: database
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Recipe to install and configure MySQL database
include_recipe 'cb_mysql::database' if node['cb_mysql']['database']['host'] == '127.0.0.1'
