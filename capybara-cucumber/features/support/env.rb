# features/support/env.rb
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end

Capybara.default_max_wait_time = 5  # Wait up to 5 seconds for elements to appear