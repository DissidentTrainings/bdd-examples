@account
Feature: Send Money

Scenario: Send the money away

Given I follow "Send money"
When I fill in "Email" with "mukmuk@example.com"
And I fill in "Amount" with "10"
And I select "Bank account" from "Source"
And I press "Send"
Then I should see "You've sent $10 to mukmuk@example.com"
