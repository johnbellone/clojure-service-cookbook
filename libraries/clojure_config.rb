#
# Cookbook: clojure-service
# License: Apache 2.0
#
# Copyright 2015, Bloomberg Finance L.P.
#
require 'poise'

module ClojureService
  module Resource
    class ClojureConfig < Chef::Resource
      include Poise(fused: true)
      provides(:clojure_config)
    end
  end
end
