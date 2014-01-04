$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "kebapage/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "kebapage"
  s.version     = Kebapage::VERSION
  s.authors     = %w[lab2023]
  s.email       = %w[info@lab2023.com]
  s.homepage    = "https://github.com/kebab-project/kebapage"
  s.summary     = "It's a gem that manages static pages of a Cybele Rails application."
  s.description = "Kebapage is a static page manager for Cybele initialized Rails applications."

  s.files = Dir['app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency "rails", "~> 4.0.2"
  s.add_dependency "haml", "~> 4.0.2"
  s.add_dependency "rails-i18n", "~> 4.0.1"
  s.add_dependency "i18n", "~> 0.6.9"
  s.add_dependency "haml-rails"
  s.add_dependency "friendly_id"

  s.add_development_dependency "sqlite3"
end
