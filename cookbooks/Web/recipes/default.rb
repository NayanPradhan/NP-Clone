#
# Cookbook:: Web
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package "tomcat"
bash 'install_something' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
  wget https://updates.jenkins-ci.org/download/war/2.61/jenkins.war
  cp jenkins.war /usr/share/tomcat/
  EOH

#service "tomcat" do
#        action :stop
#        action :start
end

template '/var/www/html/index.html' do
	source 'index.html.erb'
end
