Scenario: Feature: Asset Type Code - Master

In order to manage Asset Type Code Details for all locations
As a user with access to Hospital Master menu
I want to be able to Create/Update/View/Delete Asset Type Codes

Background:
    Given I am logged in as a user with access to Hospital Master menu

Scenario: Navigate to Asset Type Code page
    Given I am on the Hospital Master menu
    When I click on Asset Type Code Details
    Then I should be redirected to the Asset Type Code page

Scenario: Create a new Asset Type Code
    Given I am on the Asset Type Code page
    When I click on Create New Asset Type Code
    And I enter valid Asset Category, Type Code and Type Code Description
    And I click on Save
    Then I should see a success message
    And the new Asset Type Code should be listed in the grid

Scenario: View Asset Type Code details
    Given I am on the Asset Type Code page
    When I click on the View icon of a specific Asset Type Code
    Then I should be able to view the details of that Asset Type Code

Scenario: Edit Asset Type Code details
    Given I am on the Asset Type Code page
    When I click on the Edit button of a specific Asset Type Code
    Then I should be redirected to the Asset Type Code Update screen
    And the Service and Asset Classification fields should be editable
    And the Type Code Description field should be editable
    And the Type Code field should be disabled

Scenario: Delete Asset Type Code
    Given I am on the Asset Type Code page
    When I click on the Delete button of a specific Asset Type Code
    And I confirm the deletion
    Then the Asset Type Code should be deleted from the grid

Scenario: Filter Asset Type Codes
    Given I am on the Asset Type Code page
    When I enter filter criteria for Service, Asset Classification, Asset Category, Type Code and Type Code Description
    And I click on Fetch
    Then I should see a filtered list of Asset Type Codes in the grid

Scenario: Invalid Asset Category and Type Code
    Given I am on the Create New Asset Type Code page
    When I enter an invalid Asset Category or Type Code
    And I click on Save
    Then I should see an error message

Scenario: Dropdown functionality
    Given I am on the Create New Asset Type Code page
    When I click on the Service and Asset Classification dropdown fields
    And I use arrow keys to navigate
    And I press Enter to select an option
    Then the selected option should be displayed in the respective dropdown field

Scenario: Missing Asset Category
    Given I am on the Create New Asset Type Code page
    When I leave the Asset Category field blank
    And I click on Save
    Then I should see an error message

Scenario: Edit Asset Type Code Description
    Given I am on the Asset Type Code Update screen
    When I edit the Type Code Description
    And I click on Update
    Then I should see a success message
    And the updated Asset Type Code should be listed in the grid

Scenario: Disabled Type Code field
    Given I am on the Asset Type Code Update screen
    When I try to edit the Type Code field
    Then the field should be disabled

Scenario: Export Asset Type Codes
    Given I am on the Asset Type Code page
    When I click on Export
    Then I should see the Asset Type Codes exported in a file format

Scenario: Invalid Asset Category and Asset Classification
    Given I am on the Create New Asset Type Code page
    When I enter an invalid Asset Category or Asset Classification
    And I click on Save
    Then I should see an error message

Scenario: Search Asset Type Codes
    Given I am on the Asset Type Code page
    When I enter search criteria for Service, Asset Classification, Asset Category, Type Code and Type Code Description
    And I click on Search
    Then I should see a search result list of Asset Type Codes in the grid

Scenario: Missing Type Code
    Given I am on the Create New Asset Type Code page
    When I leave the Type Code field blank
    And I click on Save
    Then I should see an error message

Scenario: Refresh Asset Type Codes
    Given I am on the Asset Type Code page
    When I click on Refresh
    Then the Asset Type Code grid should be refreshed

Scenario: Cancel Asset Type Code Update
    Given I am on the Asset Type Code Update screen
    When I click on Cancel
    Then I should be redirected to the Asset Type Code page

Scenario: Missing Type Code Description
    Given I am on the Create New Asset Type Code page
    When I leave the Type Code Description field blank
    And I click on Save
    Then I should see an error message

Scenario: Close Asset Type Code
    Given I am on the Asset Type Code page
    When I click on Close
    Then I should be redirected to the Hospital Master menu