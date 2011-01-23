ENV['GEM_PATH'] += ':/home/gnoufou/gems'

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Miam::Application.initialize!
