# features/support/env.rb
require 'capybara/cucumber'
require 'selenium-webdriver'

'''These settings will run locally on the browser.'''
Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end

Capybara.default_max_wait_time = 5  # Wait up to 5 seconds for elements to appear

'''Ensure you set these variables in your environment variables.'''
# USERNAME = ENV['USERNAME']
# ACCESS_KEY = ENV['ACCESS_KEY']
# GRID_URL = ENV['GRID_URL']

''' Register the remote driver for LambdaTest - uncomment this. '''
# Capybara.app = nil
# Capybara.register_driver :selenium_remote do |app|
#   capabilities = Selenium::WebDriver::Remote::Capabilities.new
#   capabilities['browserName'] = 'firefox'
#   capabilities['browserVersion'] = 'latest'
#   capabilities['LT:Options'] = {
#     'platformName' => 'Windows 11',
#     'resolution' => '1920x1080',
#     'build' => 'Ruby Cucumber Login Tests',
#     'name' => 'User Login Feature',
#     'username' => USERNAME,  # Use environment variables for security
#     'accessKey' => ACCESS_KEY,
#     'visual' => true,
#     'video' => true,
#     'network' => true
#   }
#
#   Capybara::Selenium::Driver.new(
#     nil,
#     browser: :remote,
#     url: "https://#{USERNAME}:#{ACCESS_KEY}@#{GRID_URL}",
#     capabilities: capabilities
#   )
# end

'''Set the driver to default_driver and javascript_driver to :selenium_remote. Set app rack to nil.'''
# Capybara.default_driver = :selenium_remote
# Capybara.javascript_driver = :selenium_remote
# Capybara.app = nil