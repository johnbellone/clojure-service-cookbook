#
# Cookbook: clojure-service
# License: Apache 2.0
#
# Copyright 2015, Bloomberg Finance L.P.
#
require 'poise'

module ClojureService
  module Resource
    # A resource to manage Clojure application configurations.
    # These adheres to the edn configuration format.
    # @see https://github.com/edn-format/edn
    # @since 1.0.0
    # @example
    class ClojureConfig < Chef::Resource
      include Poise(fused: true)
      provides(:clojure_config)

      attribute(:path, kind_of: String, name_attribute: true)
      attribute(:owner, kind_of: String, default: 'clojure')
      attribute(:group, kind_of: String, default: 'clojure')
      attribute(:mode, kind_of: String, default: '0640')

      attribute(:options, option_collector: true)

      action(:create) do
        include_recipe 'clojure-service::default'
        notifying_block do
          file new_resource.path do
            content new_resource.options.to_edn
            owner new_resource.owner
            group new_resource.group
            mode new_resource.mode
          end
        end
      end

      action(:delete) do
        file new_resource.path do
          action :delete
        end
      end
    end
  end
end
