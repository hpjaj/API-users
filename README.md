# API-Users Application

App for creating, modifying, and deleting users.  Returns formatted responses in both HTML and JSON.

Gemfile contains the following relevant gems:

gem 'rails', '4.1.8'
gem 'sqlite3'

gem 'jbuilder', '~> 2.0'

group :test do
  gem 'rspec-rails', '~> 3.1.0'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 4.0'
end
