#
# Cookbook: clojure-service
# License: Apache 2.0
#
# Copyright 2015, Bloomberg Finance L.P.
#

if Chef::Resource::ChefGem.instance_methods(false).include?(:compile_time)
  chef_gem 'edn' do
    version '~> 1.1'
    compile_time true
  end
else
  chef_gem 'edn' do
    version '~> 1.1'
    action :nothing
  end.run_action(:install)
end
