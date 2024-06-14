Scenario: Feature: Asset Category Master

In order to manage Asset Category details
As a user with access rights
I want to create, update, view and delete Asset Categories

Background:
    Given I am logged in as a user with access rights
    And I am on the Hospital Master menu

Scenario: Create a new Asset Category
    Given I am on the Asset Category List page
    And I click on the Create Asset Category button
    When I enter valid Asset Category details
    And I click on the Save button
    Then I should see a success message
    And the new Asset Category should be displayed on the list page

Scenario: Update an existing Asset Category
    Given I am on the Asset Category List page
    And I click on the Edit button of a required Asset Category
    When I update the Asset Category details
    And I click on the Update button
    Then I should see a success message
    And the updated Asset Category details should be displayed on the list page

Scenario: View an existing Asset Category
    Given I am on the Asset Category List page
    And I click on the View button of a required Asset Category
    Then I should be able to see the Asset Category details

Scenario: Delete an existing Asset Category
    Given I am on the Asset Category List page
    And I click on the Delete button of a required Asset Category
    When I confirm the delete action
    Then the Asset Category should be deleted
    And I should see a success message

Scenario: Create an Asset Type Code without selecting an Asset Category
    Given I am on the Create Asset Type Code page
    When I try to create an Asset Type Code without selecting an Asset Category
    Then I should see an error message

Scenario: Create an Asset Type Code with valid data
    Given I am on the Create Asset Type Code page
    And I select a valid Asset Category
    When I enter valid Asset Type Code and Type Code Description
    And I click on the Save button
    Then I should see a success message
    And the new Asset Type Code should be displayed on the list page

Scenario: Edit an existing Asset Type Code
    Given I am on the Asset Type Code List page
    And I click on the Edit button of a required Asset Type Code
    When I update the Asset Type Code details
    And I click on the Update button
    Then I should see a success message
    And the updated Asset Type Code details should be displayed on the list page

Scenario: View an existing Asset Type Code
    Given I am on the Asset Type Code List page
    And I click on the View button of a required Asset Type Code
    Then I should be able to see the Asset Type Code details

Scenario: Verify disabled fields in the Asset Type Code edit screen
    Given I am on the Asset Type Code List page
    And I click on the Edit button of a required Asset Type Code
    Then the Service dropdown should be disabled
    And the Asset Classification dropdown should be disabled
    And the Asset Category field should be disabled
    And the Type Code field should be disabled

Scenario: Verify disabled fields in the Asset Type Code Create screen
    Given I am on the Create Asset Type Code page
    Then the Asset Classification dropdown should be disabled
    And the Service dropdown should be enabled

Scenario: Verify dropdown functionality in the Asset Type Code Create screen using keyboard
    Given I am on the Create Asset Type Code page
    When I use arrow keys to navigate the Service and Asset Classification dropdown
    And I press Enter to select an option
    Then the selected option should be displayed in the dropdown field

Scenario: Verify dropdown functionality in the Asset Type Code Create screen
    Given I am on the Create Asset Type Code page
    When I select a valid Service and Asset Classification from the dropdown
    Then the selected options should be displayed in the dropdown fields

Scenario: Verify disabled Type Code field in the Asset Type Code edit screen
    Given I am on the Asset Type Code List page
    And I click on the Edit button of a required Asset Type Code
    Then the Type Code field should be disabled

Scenario: Verify enabled Type Code Description field in the Asset Type Code edit screen
    Given I am on the Asset Type Code List page
    And I click on the Edit button of a required Asset Type Code
    When I edit the Type Code Description
    Then I should be able to update the Type Code Description

Scenario: Verify disabled Asset Classification dropdown in the Asset Type Code edit screen
    Given I am on the Asset Type Code List page
    And I click on the Edit button of a required Asset Type Code
    Then the Asset Classification dropdown should be disabled

Scenario: Verify disabled Asset Category field in the Asset Type Code edit screen
    Given I am on the Asset Type Code List page
    And I click on the Edit button of a required Asset Type Code
    Then the Asset Category field should be disabled