@login
Feature: Login

Scenario: Successful login
  Given a user "Aslak" with password "xyz"
  And I am on the login page
  And I fill in "User name" with "Aslak"
  And I fill in "Password" with "xyz"
  When I press "Log in"
  Then I should see "Welcome, Aslak"

Scenario: User is greeted upon login
  Given the user "Aslak" has an account
  When he logs in
  Then he should see "Welcome, Aslak"
