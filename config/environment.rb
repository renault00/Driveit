# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
SampleApp::Application.initialize!

require 'smtp-tls'

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
   :address => "smtp.gmail.com",
   :port => 587,
   :domain => "gmail.com",
   :authentication => :plain,
   :user_name => "driveritauto",  # don't put "@gmail.com" here, just your username
   :password => "$Driver!t",
   :enable_starttls_auto => true }
