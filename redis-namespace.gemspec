Gem::Specification.new do |s|
  s.name              = "redis-namespace-with-multi"
  s.version           = "1.2.1"
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Namespaces Redis commands. Fork with working pipelined/multi."
  s.homepage          = "http://github.com/carlzulauf/redis-namespace"
  s.email             = "carl@linkleaf.com"
  s.authors           = [ "Chris Wanstrath", "Terence Lee", "Carl Zulauf" ]
  s.has_rdoc          = false

  s.files             = %w( README.md Rakefile LICENSE )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("test/**/*")
  s.files            += Dir.glob("spec/**/*")

  s.add_dependency    "redis", "~> 3.0.0"

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"

  s.description = <<description
Adds a Redis::Namespace class which can be used to namespace calls
to Redis. This is useful when using a single instance of Redis with
multiple, different applications.

This fork adds support for the much loved multi and pipelined commands.
description
end
