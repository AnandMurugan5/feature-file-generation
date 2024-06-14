Scenario: Feature: Quota Rules Management

In order to manage quota rules efficiently
As a user with the necessary permissions
I want to create and delete quota rules through the OMS application

Background:
    Given I am logged in to the OMS application with valid credentials
    And I am on the Quota Rules screen

Scenario: Create a new quota rule
    Given I am on the Quota Rules screen
    And I click the "Create New Rule" button
    Then the "Rules Header Section" and "Rules Definition Section" should be visible
    And the "Save" and "Cancel" buttons should be available
    And I should be able to enter the necessary details to create a new quota rule
    When I click the "Save" button
    Then the new quota rule should be created successfully
    And I should see a success message confirming the creation

Scenario: Delete an existing quota rule
    Given I am on the Quota Rules screen
    And there is an existing quota rule to be deleted
    When I select the "Delete" option for the quota rule
    Then a confirmation message should be displayed
    And I should be able to confirm or cancel the deletion
    When I confirm the deletion
    Then the quota rule should be deleted successfully
    And I should see a success message confirming the deletion