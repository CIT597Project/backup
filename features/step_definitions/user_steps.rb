require 'simplecov'
SimpleCov.start do
end


def create_visitor
  @visitor ||= { :name => "Test User", :email => "example@example.com",
    :password => "changeme", :password_confirmation => "changeme"}
end

def find_user
  @user ||= User.where(:email => @visitor[:email]).first
end

def create_unconfirmed_user
  create_visitor
  delete_user
  sign_up
  visit '/users/sign_out'
end

def create_user
  create_visitor
  delete_user
  @user = FactoryGirl.create(:user, @visitor)
end

def delete_user
  @user ||= User.where(:email => @visitor[:email]).first
  @user.destroy unless @user.nil?
end

def sign_up
  delete_user
  visit '/users/sign_up'
  fill_in "user_username", :with => @visitor[:name]
  fill_in "user_email", :with => @visitor[:email]
  fill_in "user_password", :with => @visitor[:password]
  fill_in "user_password_confirmation", :with => @visitor[:password_confirmation]
  click_button "Sign up"
  find_user
end

def sign_in
  visit '/users/sign_in'
  fill_in "user_email", :with => @visitor[:email]
  fill_in "user_password", :with => @visitor[:password]
  click_button "Sign in"
end

def edit_profile
  visit'/users/edit'
  fill_in "Username", :with => @visitor[:name]
  fill_in "Email", :with => @visitor[:email]
  fill_in "Password", :with => @visitor[:password]
  fill_in "Password confirmation", :with => @visitor[:password_confirmation]
  fill_in "Current password", :with => @visitor[:password]
  click_button "Update"
end
# sign up

Given(/^I am not logged in$/) do
  visit root_path
  page.should have_content "Sign in"
end

When(/^I sign up with valid user data$/) do
  create_visitor
  sign_up
end

Then(/^I should see a successful sign up message$/) do
  page.should have_content "Welcome! You have signed up successfully."
end

When(/^I sign up with an invalid email$/) do
  create_visitor
  @visitor = @visitor.merge(:email => "notanemail")
  sign_up
end

Then(/^I should see an invalid email message$/) do
  page.should have_content "Email is invalid"
end

When(/^I sign up without a password$/) do
  create_visitor
  @visitor = @visitor.merge(:password => "")
  sign_up
end

Then(/^I should see a missing password message$/) do
  page.should have_content "Password can't be blank"
end

When(/^I sign up without a password confirmation$/) do
  create_visitor
  @visitor = @visitor.merge(:password_confirmation => "")
  sign_up
end

Then(/^I should see a missing password confirmation message$/) do
  page.should have_content "Password confirmation doesn't match Password"
end

When(/^I sign up with a mismatched password confirmation$/) do
  create_visitor
  @visitor = @visitor.merge(:password_confirmation => "changeme123")
  sign_up
end

Then(/^I should see a mismatched password message$/) do
  page.should have_content "Password confirmation doesn't match Password"
end

# Sign in steps
Given(/^I do not exist as a user$/) do
  create_visitor
  delete_user
end

When(/^I sign in with valid credentials$/) do
  create_visitor
  sign_in
end

Then(/^I see an invalid login message$/) do
  page.should have_content "Invalid email or password."
end

Then(/^I should be signed out$/) do
  page.should have_content "Sign up"
  page.should have_content "Sign in"
  page.should_not have_content "Sign out"
end

Given(/^I exist as a user$/) do
  create_user
end

Then(/^I see a successful sign in message$/) do
  page.should have_content "Signed in successfully."
end

When(/^I return to the site$/) do
  visit '/'
end

Then(/^I should be signed in$/) do
  page.should have_content "Sign out"
  page.should_not have_content "Sign in"
end

When(/^I sign in with a wrong email$/) do
  @visitor = @visitor.merge(:email => "wrong@example.com")
  sign_in
end

When(/^I sign in with a wrong password$/) do
  @visitor = @visitor.merge(:password => "wrongpass")
  sign_in
end

# profile 

Given(/^I logged in$/) do
  create_user
  sign_in
  visit root_path
  page.should have_content "Sign out"
end

When(/^I update profile with valid data$/) do
  edit_profile
end

Then(/^I should be on the home page and see a successful update message$/) do
  page.should have_content "updated successfully"
end

When(/^I update profile with incorrect password$/) do
  @visitor = @visitor.merge(:password => "wrongpass")
  edit_profile
end

Then(/^I should be on the home page and see an incorrect password message$/) do
  page.should have_content "Current password is invalid"
end

When(/^I update profile without a password confirmation$/) do
  @visitor = @visitor.merge(:password_confirmation => "")
  edit_profile
end
Then(/^I should be on the home page and see a missing password confirmation message$/) do
  page.should have_content "Password confirmation doesn't match Password"
end

When(/^I update profile with a mismatched password confirmation$/) do
  @visitor = @visitor.merge(:password_confirmation => "wrongpass")
  edit_profile
end

Then(/^I should be on the home page and see a mismatched password message$/) do
  page.should have_content "Password confirmation doesn't match Password"
end


# sign in with facebook

Given(/^I sign in my facebook account$/) do
  visit root_path
end

When(/^I  press (.*?)$/) do |arg1|
  visit root_path
  %{click button Log in with Facebook} 
end

Then(/^I need to provide credential$/) do
  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[:facebook] = {
  "provider"  => "facebook",
  "uid"       => '12345',
  "user_info" => {
  "email" => "email@email.com",
  "first_name" => "John",
  "last_name"  => "Doe",
  "name"       => "John Doe"
  }
 }
end

Then(/^I should see Log in successful$/) do
  visit root_path
  puts "Successfully authenticated from Facebook account"
end


Then(/^I need to provide credential for log in$/) do
  OmniAuth.config.test_mode = true
  [:default, :facebook, :twitter].each do |service|
  OmniAuth.config.mock_auth[service] = :invalid_credentials
  end
  end
  Then(/^I should see Log in unsuccessful$/) do
  %{Stay in the Facebook log in page} 
  end
  
Given(/^I'm trying to comments on my facebook$/) do
  visit root_path
end

Then(/^on the homepage I should see the share button$/) do
  page.has_content?('share')
end

Then(/^I press the share$/) do
  %{I press (share)}  
end

Then(/^I type in my comments and post it on my facebook$/) do   
  %{I write my comments in the pop up window}  
  visit root_path
end


#search feature

Given(/^I've filled the search\-box$/) do
visit '/general/ranking'
create_visitor
fill_in "search", :with =>'Harvard'
end

When(/^I click the search icon$/) do
  click_button "Search" 
end

Then(/^I should see the searching results$/) do
  visit 'http://localhost:3000/index?utf8=%E2%9C%93&search=Harvard'
  page.should have_content "Harvard University"
end

Given(/^I've input the wrong university name$/) do
visit '/general/ranking'
create_visitor
fill_in "search", :with =>'univsity'
end
When(/^I click the search button$/) do
  click_button "Search" 
end

Then(/^I should not see Add button$/) do 
  visit 'http://localhost:3000/index?utf8=%E2%9C%93&search=univsity'
  page.should_not have_selector(:link_or_button, 'Add')
end

#schoollist.feature

When(/^I am on the university list page$/) do
  visit'/general/ranking'
  page.should have_selector(:link_or_button, 'Add')
end

Given(/^I am on the page MyList$/) do
  visit '/mylist'
end

When(/^I choose a school in the dropdown list and add it$/) do
  find_user
  fill_in "my_school_school_id", :with => 1
  fill_in "my_school_comment", :with => 'good'
  click_button "Add"
end

When(/^I choose to add to my school list$/) do 
  page.first(:link, "Add").click
end

Then(/^I should see successful message$/) do
  page.should have_content {"Add to list successfully"||"Already"}
end


# following.feature

Then(/^I should see the numbers of following and followers$/) do
  page.should have_content "following"
  page.should have_content "followers"
end

Then(/^I should see the users following me$/) do
  page.should have_content"Followers"
end


Then(/^I should see the users I am following$/) do
  page.should have_content"Following"
end

When(/^I click follow more button$/) do
  click_button "Follow More"
end

Given(/^I see an follow button of a user$/) do
  page.should have_selector(:link_or_button, 'Follow')
end

When(/^I click this follow button$/) do
  page.first(:button, "Follow").click
end


Then(/^I should see the list of all users$/) do
  page.should have_content "Follow A Friend"
end

Given(/^I am on the page Following$/) do
  visit following_users_path
end

Then(/^I can delete the school$/) do
  page.should have_selector(:link_or_button, 'delete') 
  click_link "delete"
end

When(/^I click following$/) do
  click_link "following" 
end

When(/^I click followers$/) do
  click_link "followers"
end

Then(/^this user will be added to following list$/) do
  page.should have_content "1"
end

Given(/^I see an unfollow button of a user$/) do
  page.should have_selector(:link_or_button, 'Unfollow')
end

Given(/^I click this unfollow button$/) do
  page.first(:button, "Unfollow").click
end

Then(/^this user will be get out of my followed list$/) do
  page.should_not have_content "1"
end

#review.feature
Given(/^I have seen the comment$/) do
  pending 
end

When(/^I click the edit icon$/) do
  pending 
end

Then(/^I am able to edit comment$/) do
  pending 
end

Given(/^I have added some text to the comment field$/) do
  pending 
end

When(/^I click "(.*?)"$/) do |arg1|
  pending 
end

Then(/^I am able to update this comment$/) do
  pending 
end

Given(/^I'm on a specific school page$/) do
  pending 
end

Then(/^I should see other users' comments$/) do
  pending 
end

Given(/^I have seen the reviews about a specific university$/) do
  pending 
end

Then(/^I should be able to add my feedback$/) do
  pending 
end



#popularity.feature
Given(/^I'm looking through the information about a school$/) do
  pending 
end

Then(/^I should see the amount of users who have added this school to their school list$/) do
  pending 
end

When(/^I click "(.*?)" in the left side bar of the page$/) do |arg1|
  pending 
end

Then(/^the school list should be sorted by popularity$/) do
  pending
end


#feedback.feature
Given(/^I've seen others' review$/) do
  pending 
end

When(/^I click "(.*?)" besides the review$/) do |arg1|
  pending 
end

Then(/^I can add my own feedback$/) do
  pending 
end

Then(/^everyone can see my feedback follow the review$/) do
  pending 
end

Given(/^I've seen my own feedback$/) do
  pending 
end

When(/^I click "(.*?)" besides my feedback$/) do |arg1|
  pending 
end

Then(/^my feedback will be deleted$/) do
  pending 
end

Then(/^I should see hint message$/) do
  pending 
end


















