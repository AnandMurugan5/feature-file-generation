Scenario: Feature: Edit and View Quota Rules

  Background:
    Given I am on the Quota Rules screen

Scenario: Edit an existing quota rule
    Given a rule is available to edit
    When I click on the Edit option for that rule
    Then I should be navigated to the Edit Quota Rule screen
    And all properties of the selected rule should be available for modification
    And Save and Cancel buttons should be available
    And at least 1 rule condition must persist after modification
    And I should not be allowed to save a rule without any conditions

Scenario: View an existing quota rule
    Given a rule is available to view
    When I click on the View option for that rule
    Then I should be navigated to the View Quota Rule screen
    And all properties of the selected quota rule should be displayed in read-only mode
    And a Back button should be available for returning to the quota rules list.