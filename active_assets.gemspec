# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "active_assets"
  s.version     = '0.2.0.pre'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sam Woodard"]
  s.email       = ["sam@wildfireapp.com"]
  s.homepage    = ""
  s.summary     = %q{A Railtie that provides a full asset management system, including support for development and deployment.}
  s.description = %q{A Railtie that provides a full asset management system, including support for development and deployment.  This includes building sprites, concatenating javascript and css via expansion definitions.}

  s.rubyforge_project = "rails-assets"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'rmagick'

  s.add_development_dependency "sinatra"
  s.add_development_dependency "thin"
  s.add_development_dependency "rails", "3.0.3"
  s.add_development_dependency "test-unit", "> 2.0"
  s.add_development_dependency "capybara", "0.4.1.rc"
  s.add_development_dependency "ZenTest"
end