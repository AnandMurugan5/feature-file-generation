Scenario: Gherkin Feature File:

Feature: Quota Rules Management
In order to manage the Quota Rules
As an OMS user
I want to create, view, edit and delete Quota Rules.

Background:
Given I am logged in to OMS application

Scenario: Create new Quota Rule
Given I am on Quota Rules screen
When I click on "Create New Rule" button
Then I should see the Rules Header Section and Rules Definition Section with the following fields:
| Field Name      | Type     | Validation                     |
|----------------|----------|--------------------------------|
| Rule Name       | Text     | Required, Unique, Max 50 chars |
| Rule Type       | Dropdown | Required                       |
| Rule Description| Text     | Required, Max 255 chars        |
| Rule Action     | Dropdown | Required                       |
And I should see "Save" and "Cancel" buttons

Scenario: Edit existing Quota Rule
Given I am on Quota Rules screen
When I click on "Edit" icon for a specific Quota Rule
Then I should see the Rules Header Section and Rules Definition Section prepopulated with the existing Quota Rule details
And I should see "Save" and "Cancel" buttons

Scenario: Delete existing Quota Rule
Given I am on Quota Rules screen
When I click on "Delete" icon for a specific Quota Rule
Then I should see a confirmation message "Are you sure you want to delete this Quota Rule?"
And I should see "Yes" and "No" buttons
When I click on "No" button
Then the confirmation message should be closed
When I click on "Yes" button
Then the Quota Rule should be deleted
And the success message "Quota Rule deleted successfully" should be displayed.