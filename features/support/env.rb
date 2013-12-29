require 'selenium-webdriver'
require 'cucumber'
require 'pry'
require_relative 'lib/Objects'
require_relative 'lib/Actions'

$browser = Selenium::WebDriver::for :chrome
@objects = Reddit::Page::Objects.new($browser)
$redditbot = Reddit::Bot::Actions.new(@objects)

at_exit do
 $browser.quit
end

