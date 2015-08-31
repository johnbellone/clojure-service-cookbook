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
    end
  end

  module Provider
    # @since 1.0.0
    class ClojureService < JavaServiceCookbook::Provider::JavaService
      provides(:clojure_service)
    end
  end
end
