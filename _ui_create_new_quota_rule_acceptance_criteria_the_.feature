Scenario: Feature: Quota Rules Management
In order to manage Quota Rules
As an OMS user
I want to create and delete Quota Rules

Background:
Given I am logged in to OMS application

Scenario: Create New Quota Rule
Given I am on the Quota Rules screen
When I click on "Create New Rule" button
Then I should see Rules Header Section and Rules Definition Section
And Save and Cancel buttons should be visible
And I should be able to enter the following information:
| Field Name           | Input Type |
| Rule Name            | Text       |
| Rule Type            | Dropdown   |
| Rule Description     | Text       |
| Rule Action          | Dropdown   |
| Start Date           | Date       |
| End Date             | Date       |
| Rule Priority        | Text       |
| Max Threshold Value  | Text       |
| Usage Calculation    | Dropdown   |
| Usage Calculation    | Text       |
And I should be able to save the Quota Rule successfully

Scenario: Delete an Existing Quota Rule
Given I am on the Quota Rules screen
When I select a Quota Rule to delete
Then I should see a confirmation message asking "Are you sure you want to delete this threshold?" with Yes and No buttons
And if I click on No button, the confirmation message should be closed
And if I click on Yes button, the Quota Rule should be deleted successfully.