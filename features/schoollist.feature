Feature: Edit School list

	As a user
	so that I can mark the school I'm interested in
	I want to have a school list
	
	Background:
		Given I logged in


	Scenario: Add a school to school list
		When I am on the university list page
		And I choose to add to my school list
		Then I should see successful message
	  Given I am on the page MyList
	  Then I can delete the school
		
	Scenario: Add a school in my list page
		Given I am on the page MyList
		When I choose a school in the dropdown list and add it
		Then I should see successful message or an already exist message
		