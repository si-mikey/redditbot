Feature: A bot that takes a list of interests and upvotes reddit stories that contain relevant interets.

 Scenario: Bot should be able to login to reddit.com and upvote given terms
  Given I load reddit.com in a browser
  When I enter "" as username
  And I enter "" as password
  And I hit login
  Then I am logged in
  And I upvote posts that contain "programming, ruby, php, perl, eli5, linux, haskell, rust, todayilearned"
