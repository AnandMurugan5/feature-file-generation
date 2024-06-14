Scenario: Feature: Quota Rules Management

    In order to manage quota rules effectively,
    As a user with appropriate access,
    I want to create and delete quota rules.

Background:
    Given I am logged in to the OMS application
    And I am on the Quota Rules screen

Scenario: Create New Quota Rule

    Given the Rules Header Section and Rules Definition Section are visible
    And the Save and Cancel buttons are available
    When I fill in all the required fields
    And I click Save
    Then the new quota rule should be created successfully

Scenario: Delete an Existing Quota Rule

    Given I am on the View Rule page of an existing quota rule
    And there is an option to delete the rule
    When I select the delete option
    Then a confirmation message should be displayed
    And I click Yes to confirm deletion
    Then the quota rule should be deleted successfully

Scenario: Filter by Rule Type

    Given the filter icon next to the Rule Type column is clicked
    And the Select Value dropdown is displayed
    When a valid rule type is selected and the Apply button is clicked
    Then the Quota Rules should be displayed based on the provided filter
    And the filter icon should be highlighted
    When the Clear button is clicked
    Then the Quota Rules should be displayed without the filter

Scenario: Filter by Rule Name

    Given the filter icon next to the Rule Name column is clicked
    And the Filter by textbox is displayed
    When a valid rule name is provided and the Apply button is clicked
    Then the Quota Rules should be displayed based on the provided filter
    And the filter icon should be highlighted
    When an invalid rule name is provided and the Apply button is clicked
    Then the message "No results found" should be displayed
    When the Clear button is clicked
    Then the Quota Rules should be displayed without the filter

Scenario: Filter by Rule Action

    Given the filter icon next to the Rule Action column is clicked
    And the Select Value dropdown is displayed
    When a valid rule action is selected and the Apply button is clicked
    Then the Quota Rules should be displayed based on the provided filter
    And the filter icon should be highlighted
    When the Clear button is clicked
    Then the Quota Rules should be displayed without the filter

Scenario: Cancel Quota Rule Edit

    Given I am on the Edit Quota Rule page
    And I make changes to the details
    When I click Cancel
    Then the changes should not be saved
    And I should be redirected back to the Quota Rules screen.