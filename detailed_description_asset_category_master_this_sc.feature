Scenario: Feature: Asset Category Master

In order to manage asset categories for all locations
As a user with access to Hospital Master
I want to be able to create, update, view, and delete Asset Categories

Background:
Given I am logged in as a user with access to Hospital Master
And I am on the Asset Category List page

Scenario: Create Asset Category with valid data
Given I click the Create Asset Category button
And I enter a valid Asset Category Name
And I select a valid Asset Category Type
And I enter a valid Asset Category Description
When I click the Save button
Then I should see a success message
And the new Asset Category should be listed in the grid

Scenario: Create Asset Category with invalid data
Given I click the Create Asset Category button
And I enter an invalid or duplicate Asset Category Name
When I click the Save button
Then I should see an error message
And the Asset Category should not be created

Scenario: View Asset Category Details
Given I select an Asset Category from the grid
When I click the View button
Then I should see the Asset Category details
And the fields should be disabled for editing

Scenario: Update Asset Category with valid data
Given I select an Asset Category from the grid
When I click the Edit button
And I update the Asset Category Name, Type, or Description
And I click the Save button
Then I should see a success message
And the updated Asset Category should be listed in the grid

Scenario: Update Asset Category with invalid data
Given I select an Asset Category from the grid
When I click the Edit button
And I update the Asset Category Name to an invalid or duplicate value
And I click the Save button
Then I should see an error message
And the Asset Category should not be updated

Scenario: Delete Asset Category
Given I select an Asset Category from the grid
When I click the Delete button
And I confirm the deletion
Then I should see a success message
And the Asset Category should be removed from the grid

Scenario: Create Asset Type Code without Asset Category
Given I am on the Asset Type Code Details page
When I click the Create New Type Code button
And I do not select an Asset Category
Then I should see an error message
And the Asset Type Code should not be created

Scenario: Create Asset Type Code with valid data
Given I am on the Asset Type Code Details page
And I select a valid Asset Category
When I click the Create New Type Code button
And I enter a valid Type Code and Type Code Description
And I select a valid Service and Asset Classification
And I click the Save button
Then I should see a success message
And the new Asset Type Code should be listed in the grid

Scenario: Verify Asset Type Code Edit functionality
Given I am on the Asset Type Code Details page
And I select an existing Asset Type Code
When I click the Edit button
Then the Service, Asset Classification, Asset Category, and Type Code fields should be disabled for editing

Scenario: Verify Asset Type Code Delete functionality
Given I am on the Asset Type Code Details page
And I select an existing Asset Type Code
When I click the Delete button
And I confirm the deletion
Then I should see a success message
And the Asset Type Code should be removed from the grid

Scenario: Asset Category and Asset Type Code linkage
Given I am on the Asset Type Code Details page
And I select an existing Asset Type Code
When I verify the Asset Category field
Then the selected Asset Category should match the Asset Category associated with the Asset Type Code in the Asset register.