#
# Cookbook:: task1_community
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'ruby'

log 'ruby-1.8-unsupported' do
  message <<-EOH
Ruby 1.8 is EOL and unsupported upstream.
Consider upgrading to a current, supported version.
https://www.ruby-lang.org/en/news/2013/06/30/we-retire-1-8-7/
EOH
  level :warn
end
