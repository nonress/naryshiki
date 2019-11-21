# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

gem 'actiontext'
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'carrierwave'
gem 'faker'
gem 'image_processing', '~> 1.2'
gem 'jbuilder', '~> 2.7'
gem 'loofah', '>= 2.3.1'
gem 'mini_magick'
gem 'mysql2'
gem 'puma', '~> 3.11'
gem 'rails', '~> 6.0.0'
gem 'react-rails'
gem 'rubyzip', '>= 1.3.0'
gem 'sassc-rails'
gem 'turbolinks', '~> 5'
gem 'webpacker'
gem 'will_paginate'
gem 'will_paginate-bootstrap'
group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'rubocop', require: false
  gem 'rubocop-rails'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :development, :test do
  gem 'factory_bot_rails', '~> 5.1.1'
  gem 'rspec-rails', '~> 3.8.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'guard'
  gem 'guard-minitest'
  gem 'minitest'
  gem 'minitest-reporters'
  gem 'rails-controller-testing'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :production do
  gem 'fog', '1.42'
  gem 'pg', '0.20.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
