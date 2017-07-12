#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

package 'postgresql-server' do
notifies 'execute[postgresql-init]'
end

execute 'postgresql-init' do
command 'postgresql-setup initdb'
action :nothing
#so that it runs only when notofied by package above
end

service 'postgresql' do
action [:enable, :start]
end
