require 'selenium-webdriver'
require 'cucumber'
require 'rspec'
require 'pry'

$browser = Selenium::WebDriver::for :chrome

require_relative 'lib/Objects'
require_relative 'lib/Actions'

$redditbot = Reddit::Bot::Actions.new

RSpec.configure do |config|
 config.expect_with :rspec do |c|
  c.syntax = :expect
 end 
end

at_exit do
 $browser.quit
end

