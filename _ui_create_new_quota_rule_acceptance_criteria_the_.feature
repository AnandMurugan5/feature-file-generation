Scenario: Feature: Quota Rules Management

In order to manage quota rules effectively
As a user with appropriate permissions
I want to create and delete quota rules through the OMS application

Background:
    Given I am logged in to the OMS application with valid credentials

Scenario: Create a New Quota Rule
    Given I am on the Quota Rules screen
    Then I should see the Rules Header and Rules Definition sections
    And I should see the Save and Cancel buttons
    When I fill in the necessary fields with valid data
    And I click on the Save button
    Then the new quota rule should be saved successfully

Scenario: Delete an Existing Quota Rule
    Given I am on the Quota Rules screen
    And there is a quota rule displayed in a tabular format
    When I select the Delete option for the rule
    Then a confirmation message should be displayed
    When I confirm the deletion
    Then the quota rule should be deleted successfully

Scenario: Invalid Quota Rule Creation
    Given I am on the Quota Rules screen
    And I try to create a new quota rule with invalid data
    Then I should see appropriate error messages
    And the rule should not be saved

Scenario: Invalid Quota Rule Deletion
    Given I am on the Quota Rules screen
    And I try to delete a quota rule that doesn't exist
    Then I should see an appropriate error message
    And the rule should not be deleted