@account
Feature: Account Management

Scenario Outline: Add invalid bank account displays inline errors
  Given I follow "Add Bank Account"
  When I fill in "<field>" with "<value>"
  And I press "Add Bank Account"
  And I should see the inline error "<error>" for "<field>"

  Examples:
    | field   | value         | error                    |
    | Account |               | Can't be blank           |
    | Account | Sixty five    | Should be 1 to 12 digits |
    | Account | 1234567890123 | Should be 1 to 12 digits |
