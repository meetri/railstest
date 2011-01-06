# Load the rails application
require File.expand_path('../application', __FILE__)

config.gem "cancan"

# Initialize the rails application
Badger::Application.initialize!
