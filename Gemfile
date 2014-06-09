source 'https://rubygems.org'

ruby '2.1.1'
#ruby-gemset=TwoTime

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'

# Use Bootstrap for client side presentation
gem 'bootstrap-sass', '~>3.1.1.1'

# Use Sprockets needed by Bootstrap 
gem 'sprockets', '2.11.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Use to generate sample users
gem 'faker', '1.1.2'

# Use for a robust pagination 
gem 'will_paginate'

gem 'bootstrap-will_paginate'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'




# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Use sqlite3 as the database for Active Record
# Use rspec-rails for test driven development TTD 
group :development, :test do
	gem 'sqlite3' , '1.3.8'
	gem 'rspec-rails', '2.13.1'
	gem 'minitest'
end

# Use selenium-webdriver adn capybara for TTD and BDD
group :test do 
	gem 'selenium-webdriver'
	gem 'capybara' 
end 

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :production do
	gem 'pg', '0.15.1'
	gem 'rails_12factor', '0.0.2'
end