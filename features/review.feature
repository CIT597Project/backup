Feature: Add comments

	As a user
	In order to add a personal description
	I want to add comment to a specific university
	
	
	Scenario: Edit comment
		Given I have seen the comment
		When I click the edit icon
		Then I am able to edit comment
	
	Scenario: Add comment to a school
		Given I have added some text to the comment field
		When I click "save"
		Then I am able to update this comment
		
	Scenario: See other users' comments
		Given I'm on a specific school page
		Then I should see other users' comments
		
	Scenario: Follow up a review
		Given I have seen the reviews about a specific university
		When I click "follow up this review"
		Then I should be able to add my feedback
		
		