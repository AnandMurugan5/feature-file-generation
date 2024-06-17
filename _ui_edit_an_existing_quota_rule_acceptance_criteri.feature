Scenario: Feature: Edit and View Quota Rules

  Background:
    Given I am logged in to the OMS application

Scenario: Edit an existing quota rule
    Given I am on the Quota Rules screen
    And Edit option is available in quota rules list
    When I click on Edit for a selected rule
    Then I should be navigated to a new screen with all properties of the rule available for modification
    And Save and Cancel buttons are available
    And I should not be allowed to save the rule without any conditions
    And at least 1 rule condition must persist after modification

Scenario: Edit an existing quota rule with invalid inputs
    Given I am on the Edit Quota Rule screen
    When I provide invalid inputs for any field
    And I click on Save button
    Then I should see an error message for the invalid field

Scenario: Edit an existing quota rule and cancel changes
    Given I am on the Edit Quota Rule screen
    When I make changes to the rule properties
    And I click on Cancel button
    Then the changes made to the rule should be discarded
    And I should be navigated back to the Quota Rules list

Scenario: View an existing quota rule
    Given I am on the Quota Rules screen
    And View option is available in quota rules list
    When I click on View for a selected rule
    Then I should be navigated to a new screen with all properties of the rule shown in read-only mode
    And Back button is available for returning to the Quota Rules list.

Scenario: View a non-existing quota rule
    Given I am on the Quota Rules screen
    And View option is available in quota rules list
    When I click on View for a non-existing rule
    Then I should see an error message that the rule does not exist

Scenario: Save an edited quota rule without any conditions
    Given I am on the Edit Quota Rule screen
    And I have removed all conditions for the rule
    When I click on Save button
    Then I should see an error message that at least 1 rule condition must be present

Scenario: Save an edited quota rule with invalid inputs
    Given I am on the Edit Quota Rule screen
    When I provide invalid inputs for any field
    And I click on Save button
    Then I should see an error message for the invalid field.