require_relative "boot"

require "rails"

require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"

Bundler.require(*Rails.groups)

module RuleEvaluator
  class Application < Rails::Application
    config.load_defaults 7.0
    config.time_zone = "Central Time (US & Canada)"
    config.api_only = true
  end
end
