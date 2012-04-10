# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Gamez::Application.initialize!

ENV['RECAPTCHA_PUBLIC_KEY'] = '6LewDtASAAAAAOoV168ZY5eGLBODd-MR_QOaSR-b'
ENV['RECAPTCHA_PRIVATE_KEY'] = '6LewDtASAAAAAOygHANXOgAzP7D8jzyAhWOJgKNG'
	
