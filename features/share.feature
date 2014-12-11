Feature: Share comments on Facebook
	
	As a user
	so that I can let my friends see the comment
	I want to share the comments as moments on Facebook
	
	Scenario: Successfully log in with Facebook
	    Given I sign in my facebook account
		When I  press Log in with Facebook
		Then I need to provide credential
		Then I should see Log in successful
		
	
	Scenario: Unsuccessfully log in with Facebook
	   Given I sign in my facebook account
	    When I  press Log in with Facebook
	    Then I need to provide credential for log in
	    Then I should see Log in unsuccessful
	
	
	
	Scenario: Share on Facebook
		Given I'm trying to comments on my facebook
		Then on the homepage I should see the share button
		Then I press the share
		Then I type in my comments and post it on my facebook
		
		
	