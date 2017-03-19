require 'bundler'
Bundler.require
require 'capybara'
require 'capybara/cucumber'
require 'selenium/webdriver'
require 'site_prism'

if ENV['browser'].nil?
  browser_name = :chrome
else
  browser_name = (ENV['browser']).to_sym
end


Capybara.register_driver browser_name do |app|
  Capybara::Selenium::Driver.new(app, :browser => browser_name)
end

Capybara.default_driver = browser_name


SitePrism.configure do |config|
  config.use_implicit_waits = true
end
