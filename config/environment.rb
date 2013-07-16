# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Rubyjobs::Application.initialize!
Time::DATE_FORMATS[:vacancy_date] = "%d/%m/%Y"