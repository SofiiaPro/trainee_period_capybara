# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

# gem "rails"
group :test do
  gem "capybara", ">= 2.15", "< 4.0"
  gem "selenium-webdriver"
  gem "webdriver"
  gem "site_prism"
  gem "rspec"
  gem "vcr"
  gem "webpack"
  gem "webmock"
  gem "webdrivers"
  gem "poltergeist"
  gem "cucumber"
  gem "minitest"
  gem "rails"
  gem "simplecov", require: false
  gem 'watir'
  gem 'watir-webdriver'
  gem 'parallel'
end

group :development, :test do
  gem "rspec-rails"
end

group :test do
  gem 'cucumber-rails', require: false
  # database_cleaner is not mandatory, but highly recommended
  gem 'database_cleaner'
end