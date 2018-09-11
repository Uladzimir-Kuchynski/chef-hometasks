#
# Cookbook:: task1_apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'httpd' do    
  action :install
end
 service 'httpd' do
  action [:enable, :start]
end
 package "php" do
  action :install
end
 file '/var/www/html/phpinfo.php' do
  content '<?php phpinfo(); ?>'
  mode '0644'
  owner 'root'
  group 'root'
  notifies :restart, "service[httpd]"
end



