#
# Cookbook Name:: wordpress
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'wordpress::install_apache'
include_recipe 'my_database::default'
include_recipe 'wordpress::install_php'
include_recipe 'wordpress::create_user'
include_recipe 'wordpress::install'
