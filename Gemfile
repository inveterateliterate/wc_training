source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.3.0'

gem 'activeadmin'
# gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', require: false
gem 'danger'
gem 'decanter'
gem 'devise'
gem 'factory_bot_rails'
gem 'faker'
gem 'figaro'
# gem 'hotwire-rails'
gem 'importmap-rails'
gem 'jbuilder'
# gem 'paper_trail'
gem 'pg', '~> 1.1'
gem 'puma', '~> 6.0'
gem 'ransack'
gem 'rails', '7.1.2'
gem 'redis', '~> 4.0'
gem 'slim-rails'
gem 'sprockets-rails'
gem 'sassc-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]
# gem 'image_processing', '~> 1.2'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem 'kredis'

group :development, :test do
  gem 'brakeman'
  gem 'bullet'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'fasterer'
  gem 'letter_opener'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rails_best_practices' # installed globally, may not ineed
  gem 'reek'
  gem 'rspec-rails'
  gem 'strong_migrations'
end

group :development do
  gem 'database_consistency'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen', '~> 3.3'
  gem 'lol_dba'
  gem 'rails-erd'
  gem 'rubocop'
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'slim_lint'
  gem 'web-console'
  # gem 'rack-mini-profiler'
end

group :test do
  gem 'database_cleaner'
  gem 'rspec-collection_matchers'
  gem 'rspec-retry'
  gem 'shoulda-matchers'
  gem 'simplecov'
  gem 'simplecov-small-badge', github: 'launchpadlab/simplecov-small-badge'
  # gem 'capybara'
  # gem 'selenium-webdriver'
  # gem 'webdrivers'
end
