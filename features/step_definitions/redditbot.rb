Given(/^I load reddit\.com in a browser$/) do
 $redditbot.goto_site
end

When(/^I enter "(.*?)" as username$/) do |username|
 $redditbot.enter_username(username)
end

When(/^I enter "(.*?)" as password$/) do |password|
 $redditbot.enter_password(password)
end

When(/^I hit login$/) do
 $redditbot.submit_login 
end

Then(/^I am logged in$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^debug mode$/) do
# binding.pry
end

When(/^wait "(.*?)" secs$/) do |secs|
 sleep(secs.to_i)
end
