require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FavoriteApp
  class Application < Rails::Application
    config.generators do |g|
      g.javascripts false
      g.assets false
    end
  end
end
