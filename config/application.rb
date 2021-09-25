require_relative "boot"

require "rails/all"


Bundler.require(*Rails.groups)

module InstaC
  class Application < Rails::Application
   
    config.load_defaults 6.1
    config.active_record.default_timezone = :localß
    config.time_zone = 'Tokyo'
    
  end
end
