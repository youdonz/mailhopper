$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mailhopper/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mailhopper"
  s.version     = Mailhopper::VERSION
  s.authors     = ["Dan Gebhardt"]
  s.email       = ["support@cerebris.com"]
  s.homepage    = "https://github.com/cerebris/mailhopper"
  s.summary     = "A simple ActiveRecord-based email queue for Rails apps."
  s.description = "Mailhopper stores your application's emails in an ActiveRecord queue for asynchronous delivery. Use Mailhopper in combination with a delivery agent such as DelayedMailhopper."

  s.files       = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files  = Dir["spec/**/*"]

  s.add_dependency "rails", ">= 4.0.0"

  s.add_development_dependency "sqlite3", ">= 1.3.4"
  s.add_development_dependency "rspec-rails"
end
