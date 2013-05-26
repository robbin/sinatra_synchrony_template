source "https://rubygems.org"

gem 'rack'
gem 'sinatra'

gem 'sinatra-synchrony', :require => 'sinatra/synchrony'
gem 'em-synchrony', :require => ['em-synchrony', 'em-synchrony/mysql2', 'em-synchrony/activerecord']

gem 'activerecord', '~> 3.2', :require => 'active_record'
gem 'mysql2'
gem 'hiredis'
gem 'redis'
gem 'redis-store'
gem 'redis-activesupport'
# gem 'dalli', :require => 'active_support/cache/dalli_store'
# gem 'kgio'
gem "second_level_cache", :git => "git://github.com/csdn-dev/second_level_cache.git"
gem 'oj'

gem 'faraday'

gem 'rake'
# gem 'pony'   # pony must be after activerecord

gem 'thin'

group :production do
end

group :development do
  gem 'pry'
  gem 'sinatra-contrib'
end

group :test do
  gem 'minitest', "~>2.6", :require => "minitest/autorun"
  gem 'rack-test', :require => "rack/test"
  gem 'factory_girl'
  gem 'database_cleaner'
end
