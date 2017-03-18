require 'bundler'
Bundler.require
require 'capybara'
require 'capybara/cucumber'
require 'selenium/webdriver'
require 'site_prism'

Capybara.default_driver = :chrome
Capybara.register_driver :chrome do |app|
  options = {
      :js_errors => false,
      :timeout => 360,
      :debug => false,
      :inspector => false,
  }
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end

SitePrism.configure do |config|
  config.use_implicit_waits = true
end
