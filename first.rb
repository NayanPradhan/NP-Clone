file "first-chef.txt" do
	action :create
end

directory "src"

file "src/first.java"

package "httpd"

service "httpd" do
	action :start 
end
