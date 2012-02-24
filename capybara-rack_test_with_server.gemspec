# -*- encoding: utf-8 -*-
require File.expand_path('../lib/capybara-rack_test_with_server/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Rainux Luo']
  gem.email         = ['rainux@gmail.com']
  gem.description   = %q{RackTest driver for Capybara, with a Rack server started.}
  gem.summary       = %q{RackTest driver for Capybara, with a Rack server started. So you can access the internal API of your application from your tests, while keep them run as fast as lighting with the RackTest driver.}
  gem.homepage      = 'https://github.com/rainux/capybara-rack_test_with_server'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'capybara-rack_test_with_server'
  gem.require_paths = ['lib']
  gem.version       = Capybara::RackTestWithServer::VERSION

  gem.add_runtime_dependency('capybara', ['>= 1.0.0'])
end
