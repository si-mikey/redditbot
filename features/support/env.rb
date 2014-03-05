require 'selenium-webdriver'
require 'cucumber'
require 'rspec'
require 'pry'

require_relative 'lib/Objects'
require_relative 'lib/Actions'

Before do
  @browser    ||= Selenium::WebDriver::for :chrome
  @objects    ||= Reddit::Page::Objects.new(@browser)
  @redditbot  ||= Reddit::Bot::Actions.new(@objects)
end

RSpec.configure do |config|
 config.expect_with :rspec do |c|
  c.syntax = :expect
 end 
end

After do
  @browser.quit
end
