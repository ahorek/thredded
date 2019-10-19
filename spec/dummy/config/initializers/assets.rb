# frozen_string_literal: true

Rails.application.config.assets.precompile += %w[day.css night.css email.css] if Rails::VERSION::MAJOR < 6

# Work around https://github.com/rails/sprockets/issues/581
Rails.application.config.assets.configure do |env|
  env.export_concurrent = false
end
