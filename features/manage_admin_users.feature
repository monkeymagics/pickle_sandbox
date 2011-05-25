Feature: Manage admin/users
  In order to [goal]
  [stakeholder]
  wants [behaviour]

  Scenario: Register new admin/user
    Given I am on the new admin/user page
    When I fill in "Name" with "name 1"
    And I press "Create"
    Then I should see "name 1"

  Scenario: Delete admin/user
    Given the following admin/users:
      |name|
      |name 1|
      |name 2|
      |name 3|
      |name 4|
    When I delete the 3rd admin/user
    Then I should see the following admin/users:
      |Name|
      |name 1|
      |name 2|
      |name 4|
