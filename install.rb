package "tomcat" 
bash 'install_something' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
  wget https://updates.jenkins-ci.org/download/war/2.61/jenkins.war	
  cp jenkins.war /usr/share/tomcat/
  EOH

service "tomcat" do 
	action :stop
	action :start
end

end
