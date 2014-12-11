Feature: following
  In order to interact with other users
  A user
  Should be able to follow others or be followed
	
 	Background: 
 		Given I logged in
		

 	Scenario: show following and followers in my list
 		Given I am on the page MyList
 		Then I should see the numbers of following and followers
		When I click following
		Then I should see the users I am following
		When I click followers
		Then I should see the users following me
	
 	Scenario: follow more users
 		Given I am on the page Following
		When I click follow more button
 		Then I should see the list of all users
		Given I see an follow button of a user
		When I click this follow button
		Then this user will be added to following list
		Given I see an unfollow button of a user
		Given I click this unfollow button
		Then this user will be get out of my followed list
	
   