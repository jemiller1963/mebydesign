source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'

# Use postgresql as the database for Active Record
gem 'pg'

gem 'rake', '>= 10.3.2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# gem 'bootstrap-sass', '2.3.2.0'
gem 'anjlab-bootstrap-rails', '~> 3.0.3.0', :require => 'bootstrap-rails'
gem 'sprockets', '2.11.0'

gem 'will_paginate', '~> 3.0.7'
gem 'bootstrap-will_paginate', '~> 0.0.10'
gem 'simple_form', '~> 3.0.2'

# for Heroku
gem 'rails_12factor', :group => [:production, :staging]
gem 'faker'

group :development, :test do
	gem 'guard'
	gem 'guard-livereload'
	gem 'guard-rspec'
	gem 'rspec-rails'
	gem 'shoulda-matchers'
    gem 'spork-rails', '4.0.0'
    gem 'guard-spork', '1.5.1'
    gem 'childprocess', '0.3.6'
end

group :test do
	  gem 'selenium-webdriver', '2.35.1'
	  gem 'capybara'
	  gem 'factory_girl_rails', '4.2.0'
	  gem 'cucumber-rails', '1.3.0', :require => false
	  gem 'database_cleaner', github: 'bmabey/database_cleaner'
	  gem 'growl', '1.0.3'
	  gem 'forgery', '~> 0.6.0'
	  # gem 'faker'
	  # gem 'growl_notify'
end

group :development do
	gem 'awesome_print', '~> 1.2.0'
	gem 'better_errors' # for debugging
	gem "binding_of_caller"
	gem 'meta_request', '~> 0.3.3'  # for debugging
end


group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
