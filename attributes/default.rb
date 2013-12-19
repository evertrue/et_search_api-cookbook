default['cluster']['role'] = 'app'
default['cluster']['name'] = 'api'

set['jetty']['java_options'] = "-Xmx1G -Djava.awt.headless=true -Dcom.et.env=#{node.chef_environment} -javaagent:#{node['newrelic']['agent_home']}/newrelic.jar"
