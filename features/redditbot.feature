Feature: A bot that takes a list of interests and upvotes reddit stories that contain relevant interets.

 Scenario: Bot shold be able to login to reddit.com
  Given I load reddit.com in a browser
  When I enter "***REMOVED***" as username
  And I enter "***REMOVED***" as password
  And I hit login
  And wait "10" seconds 
  Then I am logged in
  
  
