source 'https://rubygems.org'
ruby '1.9.3'

gem 'thin'

gem 'rails', '3.2.8'
gem 'rails_config'
gem 'jquery-rails'

gem 'sqlite3'
# gem 'bcrypt-ruby', '~> 3.0.0'

gem 'slim'
gem "batman-rails"

gem 'devise'
gem 'omniauth-facebook'
gem 'omniauth-twitter'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platforms => :ruby
  gem 'bootstrap-sass'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'annotate', '~> 2.5.0' # Model annotations
  gem 'quiet_assets', '~> 1.0.1' # Disable asset requests in log
  gem 'letter_opener', '~> 0.0.2' # Display emails in browser instead of sending it
  gem 'proxylocal', '~> 0.3.1' # Make local application accessible from internet
  # gem 'guard', '~> 1.3.0' # file changes monitoring and tests execution
  # gem 'guard-spork', '~> 1.1.0'
  # gem 'guard-zeus'
  gem 'guard-rspec', '~> 2.1.2'
  gem 'zeus'
end

group :development, :test do
  gem 'pry', '~> 0.9.10' # irb replacement
  gem 'pry-remote'
  gem 'pry-nav'
  gem 'pry-rails', '~> 0.2.1'
  gem 'debugger', '~> 1.2.0'
  gem 'rspec-rails', '~> 2.11.0'
  gem 'factory_girl_rails', '~> 4.0.0'
  gem 'spork-rails', '~> 3.2.0' # tests accelerator
  gem 'rb-fsevent', '~> 0.9.1'
  gem 'database_cleaner', '>= 0.6.7'
  gem 'g', '~> 1.7.1'
  gem 'terminal-notifier', '~> 1.4.2'
  gem 'faker', '~> 1.1.2'
end

group :test do
  gem 'capybara', '~> 1.1.2' # Testing user interface
  gem 'poltergeist', :git => 'git://github.com/jonleighton/poltergeist.git' # TODO: remove git entry when version 0.8.0 will be released
  gem 'turnip', '~> 1.0.0' # testing application behaviour
  gem 'simplecov'
  gem 'shoulda-matchers'
  gem 'terminal-notifier-guard', '~> 1.5.3'
  gem 'launchy', '~> 2.1.2'
end
