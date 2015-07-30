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

node.set["jetty"]["log"]["level"] = 'WARNING'

if node['storage']['ephemeral_mounts']
  node.set['jetty']['app_log_dir'] =
    "#{node['storage']['ephemeral_mounts'].first}/application_logs"
else
  node.set['jetty']['app_log_dir'] = '/var/log/application_logs'
end

node.set['jetty']['java_options'] = '-Xmx1G -Djava.awt.headless=true ' \
  "-Dcom.et.env=#{node.chef_environment} " \
  "-Dcom.et.jetty.log.dir=#{node['jetty']['app_log_dir']}"

directory node['jetty']['app_log_dir'] do
  owner  node['jetty']['user']
  group  node['jetty']['group']
  mode   0775
  action :create
end
