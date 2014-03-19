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

When(/^I upvote posts that contain "(.*?)"$/) do |terms|
    
  @redditbot.posts.each { |post|
      
    terms.split(/,/).each { |term|
       
      @redditbot.upvote(post) if post.text.downcase.include?(term.downcase)
    }
  }
end
