#
# Cookbook Name:: et_search_api
# Recipe:: default
#
# Copyright 2013, EverTrue, Inc.
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'et_hipsnip-jetty::default'
include_recipe 'et_users::evertrue'
include_recipe 'storage'

if node['storage']['ephemeral_mounts']
  node.set['jetty']['app_log_dir'] =
    "#{node['storage']['ephemeral_mounts'].first}/application_logs"
else
  node.set['jetty']['app_log_dir'] = '/var/log/application_logs'
end


directory node['jetty']['app_log_dir'] do
  owner  node['jetty']['user']
  group  node['jetty']['group']
  mode   0775
  action :create
end
