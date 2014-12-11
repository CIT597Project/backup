Feature: Update profile

	As a user
	so that I can update my username and password anytime
	I want to edit my profile
	
	Background: 
		Given I logged in

	Scenario: User update profile with valid data
		When I update profile with valid data
		Then I should be on the home page and see a successful update message

	Scenario: User update profile with incorrect password
		When I update profile with incorrect password
		Then I should be on the home page and see an incorrect password message
		
	Scenario: User update profile with without password confirmation
		When I update profile without a password confirmation
		Then I should be on the home page and see a missing password confirmation message
		
	Scenario: User update profile with mismatched password and confirmation
		When I update profile with a mismatched password confirmation
      	Then I should be on the home page and see a mismatched password message
		
	