require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module Blog
  class Application < Rails::Application

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.


    config.action_mailer.smtp_settings = {
      address: "smtp.mailgun.org",
      port: 587,
      domain: "training.wolox.com.ar",
      authentication: :plain,
      enable_starttls_auto: true,
      user_name: ENV["MAIL_USERNAME"],
      password: ENV["MAIL_PASSWORD"]
    }

  end
end
