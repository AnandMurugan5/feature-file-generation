Scenario: Gherkin Feature File:

Feature: Quota Rule Management
In order to manage quota rules effectively
As an administrator
I want to edit and view existing quota rules

Background:
Given I am logged in as an administrator

Scenario: Edit an existing quota rule
Given I am on the Quota Rules screen
And there is an existing quota rule
When I click on the Edit button for the rule
Then I should be navigated to the Edit Quota Rule screen
And all properties of the selected rule should be available for modification
And there should be Save and Cancel buttons available
And at least 1 rule condition must persist after modification
And I should not be allowed to save a rule without any conditions

Scenario: View an existing quota rule
Given I am on the Quota Rules screen
And there is an existing quota rule
When I click on the View button for the rule
Then I should be navigated to the View Quota Rule screen
And all properties of the selected quota rule should be shown in read-only mode
And there should be a Back button available for returning to the quota rules list.