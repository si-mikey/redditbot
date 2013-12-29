Feature: A bot that takes a list of interests and upvotes reddit stories that contain relevant interets.


 Scenario: Bot should be able to load reddit.com
  Given I load reddit.com in a browser
  
 Scenario: Bot shold be able to login to reddit.com
  Given I load reddit.com in a browser
  When I enter "username" as username
  And I enter "password" as password
  And I hit login
  Then I am logged in
  
  
