Feature: A bot that takes a list of interests and upvotes reddit stories that contain relevant interets.

 Scenario: Bot shold be able to login to reddit.com
  Given I load reddit.com in a browser
  When I enter "USER_NAME" as username
  And I enter "PASSWORD" password
  And I hit login
  Then I am logged in
  And I upvote stories that contain "stuff" 
