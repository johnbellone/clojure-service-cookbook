# clojure-service-cookbook
[Library cookbook][0] which provides resources for configuring a
Clojure service.

This library cookbook provides primitives to make it simple to deploy
Clojure services. Using the *clojure_service* resource configuration
is fast and simple; the best part is that it works with the native
service management of the operating system!

## Basic Usage
THe whole point of this cookbook is to provide a dead simple way to
deploy Clojure services to an instance. The first resource installs
and configures a Clojure service as a system service. This has an
advantage of being portable based on the operating systme. The second
resource allows for easy management of the
[Edn configuration format][1].

[0]: http://blog.vialstudios.com/the-environment-cookbook-pattern
[1]: https://github.com/edn-format/edn
