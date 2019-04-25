require 'capybara'
require 'capybara/cucumber'
require 'selinium-webdriver'

Capybara.configure do |config|
    config.deafault_driver = :selenium_chrome
    config.app_host = ''
end