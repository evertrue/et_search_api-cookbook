#
# Cookbook Name:: et_search_api
# Recipe:: default
#
# Copyright 2013, EverTrue, Inc.
#
# All rights reserved - Do Not Redistribute
#
include_recipe "et_hipsnip-jetty::default"
include_recipe "et_newrelic"
include_recipe "et_users::evertrue"

# creds = Chef::EncryptedDataBagItem.load(
#     'secrets',
#     'api_keys'
#   )['autodeploy'][node.chef_environment]

# autodeployer "search.war" do
#   webapp_dir "/usr/share/jetty/webapps"
#   job "search-XXXXXXXXXXX"
#   local_user "deploy"
#   ci_url "https://ci.evertrue.com"
#   ci_user creds['ci']['user']
#   ci_password creds['ci']['password']
#   db_user creds['db']['user']
#   db_password creds['db']['password']
#   db_host "stage-etdb.cg0lvth7azzh.us-east-1.rds.amazonaws.com"
#   db_schema "deployer"
# end
