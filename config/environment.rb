# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Mebydesign::Application.initialize!

Time::DATE_FORMATS[:my_date] = "%A, %B %d, %Y"
