#
# Cookbook: clojure-service
# License: Apache 2.0
#
# Copyright 2015, Bloomberg Finance L.P.
#
module ClojureService
  module Resource
    # @since 1.0.0
    # @example
    class ClojureService < JavaServiceCookbook::Resource::JavaService
      provides(:clojure_service)

      attribute(:user, kind_of: String, default: 'clojure')
      attribute(:group, kind_of: String, default: 'clojure')

      attribute(:config_file, kind_of: String)
    end
  end

  module Provider
    # @since 1.0.0
    class ClojureService < JavaServiceCookbook::Provider::JavaService
      provides(:clojure_service)

      def action_enable
        notifying_block do
          if new_resource.config_file # ~FC023
            directory ::File.dirname(new_resource.config_file) do
              recursive true
              owner new_resource.user
              group new_resource.group
              mode '0755'
            end
          end

          # TODO: Download an artifact from repository. Figure out
          # some kind of directory structure with configurations.
        end
        super
      end
    end
  end
end
