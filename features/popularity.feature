Feature: Popularity

	As a user
	so that I can find how popular the school is
	I want to see how many users have added this school to their school list
	
	Scenario: Show popularity
		Given I'm looking through the information about a school
		Then I should see the amount of users who have added this school to their school list
		
  	Scenario: Sort by popularity
		Given I'm looking through the information about a school
		When I click "sort by popularity" in the left side bar of the page
		Then the school list should be sorted by popularity
		