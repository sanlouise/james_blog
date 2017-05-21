source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap-sass', '~> 3.3'
gem 'carrierwave'
gem 'ckeditor', '~> 4.1'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'mini_magick'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.0.2'
gem 'sass-rails', '~> 5.0'
gem 'simple_form', '~> 3.2'
gem 'sqlite3'
gem 'turbolinks', '~> 5'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'uglifier', '>= 1.3.0'
gem 'will_paginate'

group :development, :test do
  gem 'byebug'
  gem 'sqlite3'
  gem 'spring'
  gem 'rubocop'
  # Testing
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
