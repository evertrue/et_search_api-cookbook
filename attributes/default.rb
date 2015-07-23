default['cluster']['role'] = 'app'
default['cluster']['name'] = 'api'

set['jetty']['java_options'] = '-Xmx1G -Djava.awt.headless=true ' \
  "-Dcom.et.env=#{node.chef_environment}" \
  "-Dcom.et.jetty.log.dir=#{node['jetty']['app_log_dir']}"
