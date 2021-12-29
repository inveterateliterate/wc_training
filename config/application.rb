require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

ENV['APPLICATION_ROOT_URL'] = ENV['APPLICATION_ROOT_URL'] || "https://#{ENV['HEROKU_APP_NAME']}.herokuapp.com"

module WcTraining
  class Application < Rails::Application

    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: true,
        request_specs: false
      g.fixture_replacement :factory_bot, dir: "spec/factories"
    end

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Specify extra autoloading paths
    paths = [
      "#{config.root}/lib",
    ]

    config.autoload_paths   += Dir[*paths]
    config.eager_load_paths += Dir[*paths]


    # Don't generate system test files.
    config.generators.system_tests = nil

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
