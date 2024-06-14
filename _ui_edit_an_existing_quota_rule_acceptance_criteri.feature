Scenario: Gherkin Feature File:

Feature: Quota Rule Management
In order to manage quota rules effectively
As an OMS user
I want to be able to edit and view existing quota rules

Background:
Given I am logged into the OMS application

Scenario: Edit an existing quota rule
Given I am on the Quota Rules screen
And there is at least one existing rule
When I click on the Edit option for a specific rule
Then I should be navigated to a new screen with all properties of the selected rule available for modification
And Save and Cancel buttons should be available
And I should be able to modify at least one rule condition
And I should not be allowed to save the rule if it doesn't have any conditions

Scenario: View an existing quota rule
Given I am on the Quota Rules screen
And there is at least one existing rule
When I click on the View option for a specific rule
Then I should be navigated to a new screen with all properties of the selected rule shown in read-only mode
And a Back button should be available for returning to the quota rules list.