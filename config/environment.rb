# Load the rails application
require File.expand_path('../application', __FILE__)

# Set up APP_CONFIG file that will contain parameters and password information
APP_CONFIG = YAML.load_file("#{Rails.root}/config/config.yml")[Rails.env]

# Initialize the rails application
Beansprout::Application.initialize!
