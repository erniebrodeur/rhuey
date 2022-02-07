# frozen_string_literal: true

source "https://rubygems.org"

# Specify your gem's dependencies in rhuey.gemspec
gemspec

gem 'excon'
gem 'oj'

group :test do
  gem 'bump'
  gem 'bundler'
  gem 'rake'
  gem 'rspec'
  gem 'rubocop'
  gem 'rubocop-rspec'
  gem 'simplecov'
  gem 'yard'
end

group :development, optional: true do
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'guard-shell'
  gem 'guard-yard'
  gem 'pry'
  gem "pry-inline"
  gem "solargraph"
end