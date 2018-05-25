$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "my_app/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "my_app"
  s.version     = MyApp::VERSION
  s.authors     = ["Lionel Luchez"]
  s.email       = ["lionel.luchez@snapsheet.me"]
  s.homepage    = ""
  s.summary     = "Summary of MyApp."
  s.description = "Description of MyApp."

  s.files = Dir["{app,config,lib}/**/*", "Rakefile", "README.md"]
  # s.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.md"]

  s.add_dependency "rails"

  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'generator_spec'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'codecov'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'pry-rails'

  s.add_development_dependency 'mysql2'
  s.add_development_dependency 'pg'
end
