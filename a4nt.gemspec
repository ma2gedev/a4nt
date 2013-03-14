$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "a4nt/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "a4nt"
  s.version     = A4nt::VERSION
  s.authors     = ["ma2ge"]
  s.email       = ["takayuki.1229@gmail.com"]
  s.homepage    = "https://github.com/ma2gedev/a4nt"
  s.summary     = "A4nt is a simple announcements plugin for Ruby on Rails."
  s.description = "A4nt is a mountable engine based plugin for Ruby on Rails."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.12"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
