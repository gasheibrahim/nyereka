# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.smtp_settings = {
    :user_name => 'apikey',
    :password => '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',
    :domain => 'yourdomain.com',
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }