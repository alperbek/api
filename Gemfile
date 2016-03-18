source 'https://rubygems.org'
ruby '2.2.1'

gem 'rails', '4.2.5.2'
gem 'rails-api'
gem 'spring', :group => :development
gem 'sqlite3'
gem 'friendly_id', '~> 5.1.0'
gem 'rack-cors'
gem 'dalli'
gem 'puma'

gem 'omniauth'
gem 'devise_token_auth'
gem 'active_model_serializers'

group :test do
	gem 'shoulda'
	gem 'mocha'
end

group :development, :test do
	gem 'factory_girl_rails'
	gem 'rspec-rails'
	gem 'rspec-its'
end

# Deploy with Capistrano
# gem 'capistrano', :group => :development