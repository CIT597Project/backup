Feature: Comment others' review

	As a user
	so that I can give some feedback to others
	I want to comment others' review
	
	Scenario: Comment others' review
		Given I've seen others' review
		When I click "reply" besides the review
		Then I can add my own feedback
		When I click "save"
		Then everyone can see my feedback follow the review
		
	Scenario: Delete my own feedback
		Given I've seen my own feedback
		When I click "delete" besides my feedback
		Then my feedback will be deleted
		And I should see hint message 