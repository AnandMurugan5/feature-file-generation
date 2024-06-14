Scenario: Feature: Edit and View Quota Rules

    Background:
        Given I am logged in to the OMS application

Scenario: Edit an existing quota rule
        Given I am on the Quota Rules screen
        And there is at least one rule with conditions present
        When I click on the Edit option for a rule
        Then I should be navigated to a new screen with all properties of the selected rule available for modification
        And Save and Cancel buttons should be available
        And I am able to modify the rule properties
        When I click on the Save button
        Then the modified rule should be saved
        And at least one rule condition should persist after modification
        And I should be taken back to the Quota Rules screen

Scenario: Attempt to save a rule without any conditions
        Given I am on the Quota Rules screen
        And there is at least one rule with conditions present
        When I click on the Edit option for a rule
        And I modify the rule to have no conditions
        And I click on the Save button
        Then I should see an error message indicating that the rule cannot be saved without any conditions

Scenario: View an existing quota rule
        Given I am on the Quota Rules screen
        When I click on the View option for a rule
        Then I should be navigated to a new screen with all properties of the selected rule shown in read-only mode
        And a Back button should be available for returning to the Quota Rules screen

Scenario: Attempt to edit a non-existent rule
        Given I am on the Quota Rules screen
        When I click on the Edit option for a non-existent rule
        Then I should see an error message indicating that the rule does not exist

Scenario: Attempt to view a non-existent rule
        Given I am on the Quota Rules screen
        When I click on the View option for a non-existent rule
        Then I should see an error message indicating that the rule does not exist

Scenario: Attempt to save an invalid rule
        Given I am on the Quota Rules screen
        And there is at least one rule with conditions present
        When I click on the Edit option for a rule
        And I modify the rule with invalid information
        And I click on the Save button
        Then I should see an error message indicating that the rule cannot be saved with invalid information

Scenario: Attempt to cancel changes made to a rule
        Given I am on the Quota Rules screen
        And there is at least one rule with conditions present
        When I click on the Edit option for a rule
        And I modify the rule
        And I click on the Cancel button
        Then the changes made to the rule should be discarded
        And I should be taken back to the Quota Rules screen.