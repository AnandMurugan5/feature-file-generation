Scenario: Gherkin Feature File:

Feature: Quota Rules Management
In order to manage Quota Rules effectively
As a Quota Rules Manager
I want to create and delete quota rules from the OMS application

Background:
Given I am logged in to the OMS application with valid credentials

Scenario: Create a new quota rule
Given I am on the Quota Rules screen
And the Rules Header Section and Rules Definition Section are visible
When I fill in all required fields with valid data
And click on the Save button
Then the new quota rule should be created successfully
And a success message should be displayed
And the new quota rule should be visible on the Quota Rules screen

Scenario: Delete an existing quota rule
Given I am on the Quota Rules screen
And an existing quota rule is visible in the table
When I select the Delete option for the quota rule
And confirm the deletion
Then the quota rule should be deleted successfully
And a success message should be displayed
And the quota rule should no longer be visible in the table

Scenario: Invalid input for creating a quota rule
Given I am on the Quota Rules screen
And the Rules Header Section and Rules Definition Section are visible
When I fill in any required field with invalid data
And click on the Save button
Then an error message should be displayed
And the quota rule should not be created

Scenario: Cancel creating a new quota rule
Given I am on the Quota Rules screen
And the Rules Header Section and Rules Definition Section are visible
When I fill in any required field with valid data
And click on the Cancel button
Then the quota rule should not be created
And I should remain on the Quota Rules screen

Scenario: Cancel deleting an existing quota rule
Given I am on the Quota Rules screen
And an existing quota rule is visible in the table
When I select the Delete option for the quota rule
And cancel the deletion
Then the quota rule should not be deleted
And I should remain on the Quota Rules screen