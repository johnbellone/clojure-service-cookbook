name 'clojure-service'
maintainer 'John Bellone'
maintainer_email 'jbellone@bloomberg.net'
license 'Apache 2.0'
description 'Library cookbook which provides resources for configuring a Clojure service.'
long_description 'Library cookbook which provides resources for configuring a Clojure service.'
version '1.0.0'

supports 'centos'
supports 'redhat'
supports 'ubuntu'

depends 'java-service', '~> 1.0'
depends 'poise', '~> 2.2'
depends 'poise-service', '~> 1.0'
