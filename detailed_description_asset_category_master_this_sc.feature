Scenario: Feature: Asset Category Master

    In order to define the Asset Category Details
    As a user with access to the Hospital Master menu
    I want to be able to Create/Update/View/Delete Asset Categories
    
    Background:
        Given I am logged in as a user with access to the Hospital Master menu

Scenario: Create a new Asset Category with valid data
        Given I am on the Asset Category List page
        When I click on the Create Asset Category button
        And I enter a valid Asset Category Name and Description
        And I click on the Save button
        Then I should see a success message
        And the new Asset Category should be displayed in the list

Scenario: Edit an Asset Category
        Given I am on the Asset Category List page
        When I click on the Edit button of a particular Asset Category
        And I update the Asset Category Name or Description
        And I click on the Save button
        Then I should see a success message
        And the updated Asset Category should be displayed in the list

Scenario: View an Asset Category
        Given I am on the Asset Category List page
        When I click on the View button of a particular Asset Category
        Then I should be able to view the Asset Category details

Scenario: Delete an Asset Category
        Given I am on the Asset Category List page
        When I click on the Delete button of a particular Asset Category
        And I confirm the deletion
        Then I should see a success message
        And the Asset Category should no longer be displayed in the list

Scenario: Create a new Asset Type Code with valid data
        Given I am on the Asset Category List page
        When I click on the Create Asset Type Code button of a particular Asset Category
        And I enter a valid Service, Asset Classification, Type Code and Type Code Description
        And I click on the Save button
        Then I should see a success message
        And the new Asset Type Code should be displayed in the list

Scenario: Edit an Asset Type Code
        Given I am on the Asset Category List page
        When I click on the Edit button of a particular Asset Type Code
        And I update any of the details - Service, Asset Classification, Type Code or Type Code Description
        And I click on the Save button
        Then I should see a success message
        And the updated Asset Type Code should be displayed in the list

Scenario: View an Asset Type Code
        Given I am on the Asset Category List page
        When I click on the View button of a particular Asset Type Code
        Then I should be able to view the Asset Type Code details

Scenario: Delete an Asset Type Code
        Given I am on the Asset Category List page
        When I click on the Delete button of a particular Asset Type Code
        And I confirm the deletion
        Then I should see a success message
        And the Asset Type Code should no longer be displayed in the list

Scenario: Verify that Asset Category is mandatory for Asset Type Code creation
        Given I am on the Asset Category List page
        When I click on the Create Asset Type Code button
        And I try to save without selecting an Asset Category
        Then I should see an error message

Scenario: Verify that Service dropdown is disabled in Asset Type Code edit mode
        Given I am on the Asset Category List page
        When I click on the Edit button of a particular Asset Type Code
        Then I should see the Service dropdown as disabled

Scenario: Verify that Asset Classification dropdown is disabled in Asset Type Code edit mode
        Given I am on the Asset Category List page
        When I click on the Edit button of a particular Asset Type Code
        Then I should see the Asset Classification dropdown as disabled

Scenario: Verify that Asset Category field is disabled in Asset Type Code edit mode
        Given I am on the Asset Category List page
        When I click on the Edit button of a particular Asset Type Code
        Then I should see the Asset Category field as disabled

Scenario: Verify that Type Code field is disabled in Asset Type Code edit mode
        Given I am on the Asset Category List page
        When I click on the Edit button of a particular Asset Type Code
        Then I should see the Type Code field as disabled

Scenario: Validate the functionality of Service and Asset Classification dropdown using keyboard
        Given I am on the Create Asset Type Code page
        When I use the arrow keys to navigate the Service and Asset Classification dropdowns
        And I select an option by pressing Enter
        Then I should see the selected option in the respective dropdown

Scenario: Validate the functionality of Service and Asset Classification dropdown without keyboard
        Given I am on the Create Asset Type Code page
        When I select an option from the Service and Asset Classification dropdowns
        Then I should see the selected option in the respective dropdown.