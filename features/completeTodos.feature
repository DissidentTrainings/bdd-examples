Feature: Todo List

# https://robots.thoughtbot.com/writing-better-cucumber-scenarios-or-why-were

Scenario: Complete all incomplete todos
  Given the following todos exist:
    | title        | author                    | complete |
    | Pick up milk | email: person@example.com | false    |
    | Pick up eggs | email: person@example.com | false    |
  And I have signed in as "person@example.com"
  When I complete the todo "Pick up milk"
  And I complete the todo "Pick up eggs"
  Then I should have no incomplete todos

Scenario: Complete all incomplete todos
  Given I have signed in
  And I have 2 incomplete todos
  When I complete all my incomplete todos
  Then I should have no incomplete todos
