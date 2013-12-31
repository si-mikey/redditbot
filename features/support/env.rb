require 'selenium-webdriver'
require 'cucumber'
require 'rspec'
require 'pry'
require_relative 'lib/Objects'
require_relative 'lib/Actions'

$browser = Selenium::WebDriver::for :chrome
@objects = Reddit::Page::Objects.new($browser)
$redditbot = Reddit::Bot::Actions.new(@objects)

RSpec.configure do |config|
 config.expect_with :rspec do |c|
  c.syntax = :expect
 end 
end

at_exit do
 $browser.quit
end

