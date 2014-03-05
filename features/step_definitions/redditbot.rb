Given(/^I load reddit\.com in a browser$/) do
 @redditbot.load
end

When(/^I enter "(.*?)" as username$/) do |username|
 @redditbot.enter_username(username)
 @redditbot.name = username
end

When(/^I enter "(.*?)" as password$/) do |password|
 @redditbot.enter_password(password)
end

When(/^I hit login$/) do
 @redditbot.submit_login
end

Then(/^I am logged in$/) do
 expect(@redditbot.logged_in?).to eql true 
end

When(/^debug mode$/) do
#binding.pry
end

When(/^wait "(.*?)" seconds$/) do |secs|
 sleep(secs.to_i)
end

When(/^I upvote stories that contain "(.*?)"$/) do |string|

 @redditbot.upvote_story.each { |story| 
 
	 p story 
 }
end
