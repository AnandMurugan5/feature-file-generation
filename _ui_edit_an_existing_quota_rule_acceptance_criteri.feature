Scenario: Feature: Manage Quota Rules in OMS Application

Background:
    Given the OMS application is launched and user is logged in with valid credentials

Scenario: Edit an existing quota rule
    Given the Quota Rules screen is displayed
    And the Edit option is available in the quota rules list
    When the user clicks on Edit for a selected rule
    Then a new screen with all properties of the selected rule should be available for modification
    And Save and Cancel buttons should be available
    And at least 1 rule condition must persist after modification
    And the user should not be allowed to save a rule without any conditions

Scenario: View an existing quota rule
    Given the Quota Rules screen is displayed
    And the View option is available in the quota rules list
    When the user clicks on View for a selected rule
    Then a new screen with all properties of the selected quota rule should be shown in read-only mode
    And a Back button is available for returning to the quota rules list

Scenario: Filter by Rule Description
    Given the Quota Rules screen is displayed
    And the filter icon next to the Rule Description column is clicked
    Then a filter by text box and clear and apply buttons should be displayed
    When a valid rule description is provided and the apply button is clicked
    Then quota rules should be displayed based on the provided filter
    And the filter icon should be highlighted
    When an invalid rule description is provided and the apply button is clicked
    Then "No results found" should be displayed
    When the clear button is clicked
    Then quota rules should be displayed without a filter

Scenario: Filter by Rule Action
    Given the Quota Rules screen is displayed
    And the filter icon next to the Rule Action column is clicked
    Then a filter by text box and clear and apply buttons should be displayed
    When a valid rule action is provided and the apply button is clicked
    Then quota rules should be displayed based on the provided filter
    And the filter icon should be highlighted
    When an invalid rule action is provided and the apply button is clicked
    Then "No results found" should be displayed
    When the clear button is clicked
    Then quota rules should be displayed without a filter.