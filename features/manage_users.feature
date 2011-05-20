@users
Feature: Manage users
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new user
    Given I am on the new user page
    When I fill in "Name" with "name 1"
    And I press "Create"
    Then I should see "name 1"

  Scenario: Delete user
    Given the following users:
      |name|
      |name 1|
      |name 2|
      |name 3|
      |name 4|
    When I delete the 3rd user
    Then I should see the following users:
      |Name|
      |name 1|
      |name 2|
      |name 4|

  Scenario: Show user
    Given a admin/user exists with name: "akm"
    When I go to the show page for that admin/user
    Then I should see "akm"
