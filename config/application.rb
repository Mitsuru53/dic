require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Achieve
  class Application < Rails::Application
    config.load_defaults 5.1

  #  config.active_record.raise_in_transactional_callbacks = true

    config.action_view.field_error_proc { |html_tag, instance| html_tag}
  end
end
