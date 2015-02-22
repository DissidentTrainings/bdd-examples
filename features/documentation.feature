@docs
Feature: Example feature
  As a participant of  the bdd workshop
  I want to have documentation on the used examples
  So that I can concentrate review the content after the workshop

  Scenario: Reading documentation
    Given I am on the bdd-examples GitHub repository
    When I go to the README file
    Then I should see "BDD Workshop Examples"
