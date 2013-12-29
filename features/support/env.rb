require 'selenium-webdriver'
require 'cucumber'
require 'pry'
require_relative 'lib/pageObjects'


$browser = Selenium::WebDriver::for :chrome
$reddit = Reddit::Page::Objects.new($browser)


at_exit do
 $browser.quit
end

