Scenario: Feature: Quota Rules Management

In order to manage quota rules efficiently
As a quota rules administrator
I want to create, view, edit, and delete quota rules

Background:
    Given the user is logged in to the OMS application
    And on the Quota Rules screen

Scenario: Create new quota rule
    Given the user is on the Quota Rules screen
    And the Rules Header and Rules Definition sections are visible
    And the Save and Cancel buttons are available
    When the user enters valid quota rule details
    And clicks on Save button
    Then the quota rule should be saved successfully
    And a success message should be displayed

Scenario: Cancel creating a new quota rule
    Given the user is on the Quota Rules screen
    And the Rules Header and Rules Definition sections are visible
    And the Save and Cancel buttons are available
    When the user clicks on Cancel button
    Then the user should be navigated back to the Quota Rules screen
    And the new quota rule should not be saved

Scenario: Delete an existing quota rule
    Given the user is on the Quota Rules screen
    And there is at least one existing quota rule
    When the user clicks on the Delete icon for a quota rule
    Then a confirmation message should be displayed
    And the user should have the option to confirm or cancel the deletion
    When the user confirms the deletion
    Then the quota rule should be deleted successfully
    And a success message should be displayed

Scenario: Cancel deleting an existing quota rule
    Given the user is on the Quota Rules screen
    And there is at least one existing quota rule
    When the user clicks on the Delete icon for a quota rule
    Then a confirmation message should be displayed
    And the user should have the option to confirm or cancel the deletion
    When the user cancels the deletion
    Then the quota rule should not be deleted
    And the user should remain on the Quota Rules screen

Scenario: View and edit an existing quota rule
    Given the user is on the Quota Rules screen
    And there is at least one existing quota rule
    When the user clicks on the Edit icon for a quota rule
    Then the user should be navigated to the Edit Quota Rule screen
    And the existing quota rule details should be displayed
    And the Save and Cancel buttons should be available
    When the user updates the quota rule details
    And clicks on Save button
    Then the quota rule should be updated successfully
    And a success message should be displayed

Scenario: Cancel editing an existing quota rule
    Given the user is on the Edit Quota Rule screen
    And there is at least one existing quota rule
    When the user clicks on Cancel button
    Then the user should be navigated back to the Quota Rules screen
    And the existing quota rule details should not be updated

Scenario: Filter quota rules by rule type
    Given the user is on the Quota Rules screen
    And there are multiple existing quota rules
    When the user clicks on the Filter icon next to the Rule Type column
    Then a select value dropdown should be displayed
    And the user should have the option to select one or multiple rule types
    And the user should have the option to clear or apply the filter
    When the user applies the filter
    Then the quota rules should be displayed based on the selected rule type(s)
    And the filter icon should be highlighted

Scenario: Filter quota rules by rule name
    Given the user is on the Quota Rules screen
    And there are multiple existing quota rules
    When the user clicks on the Filter icon next to the Rule Name column
    Then a filter by text box should be displayed
    And the user should have the option to enter a valid rule name
    And the user should have the option to clear or apply the filter
    When the user applies the filter
    Then the quota rules should be displayed based on the entered rule name
    And the filter icon should be highlighted

Scenario: Filter quota rules by rule action
    Given the user is on the Quota Rules screen
    And there are multiple existing quota rules
    When the user clicks on the Filter icon next to the Rule Action column
    Then a filter by text box should be displayed
    And the user should have the option to enter a valid rule action
    And the user should have the option to clear or apply the filter
    When the user applies the filter
    Then the quota rules should be displayed based on the entered rule action
    And the filter icon should be highlighted