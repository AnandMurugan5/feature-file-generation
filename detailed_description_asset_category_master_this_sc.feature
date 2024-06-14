Scenario: Feature: Asset Category Master

In order to manage Asset Categories
As a user with access to Hospital Master
I want to be able to create, update, view and delete Asset Categories

Background:
Given I am logged in as a user with access to Hospital Master
And I am on the Asset Category List page

Scenario: Create a new Asset Category
Given I click on the Create Asset Category button
And I enter a valid Asset Category Name
And I enter a valid Asset Category Description
When I click on the Save button
Then the Asset Category is created successfully
And I am redirected to the Asset Category List page
And the newly created Asset Category is displayed in the grid

Scenario: View an existing Asset Category
Given I click on the View button of an existing Asset Category
Then I am redirected to the Asset Category Details page
And I can view all the details of the Asset Category
And the Asset Category fields are disabled for editing

Scenario: Edit an existing Asset Category
Given I click on the Edit button of an existing Asset Category
Then I am redirected to the Asset Category Details page
And I can edit the Asset Category Name
And I can edit the Asset Category Description
When I click on the Update button
Then the Asset Category is updated successfully
And I am redirected to the Asset Category List page
And the updated Asset Category is displayed in the grid

Scenario: Delete an existing Asset Category
Given I click on the Delete button of an existing Asset Category
And I confirm the deletion
When I click on the Ok button
Then the Asset Category is deleted successfully
And the Asset Category is removed from the grid

Scenario: Link Asset Type Code to an Asset Category
Given I am on the Asset Type Code Details page
And I click on the Create New Type Code button
And I enter a valid Asset Category
And I enter a valid Type Code
And I enter a valid Type Code Description
When I click on the Save button
Then the Asset Type Code is linked to the Asset Category successfully
And I am redirected to the Asset Type Code List page
And the newly created Asset Type Code is displayed in the grid

Scenario: Verify Asset Category is mandatory for Asset Type Code creation
Given I am on the Asset Type Code Details page
And I click on the Create New Type Code button
And I do not enter an Asset Category
When I click on the Save button
Then the system should display an error message stating that Asset Category is mandatory

Scenario: Verify Asset Category Description is auto-fetched
Given I am on the Asset Type Code Details page
And I click on the Create New Type Code button
And I enter a valid Asset Category
When I verify the Asset Category Description field
Then the system should have auto-fetched the Asset Category Description

Scenario: Verify dropdown functionality of Asset Category using keyboard
Given I am on the Asset Type Code Details page
And I click on the Create New Type Code button
And I click on the Asset Category dropdown field
When I use arrow keys to navigate
And I press Enter to select an option
Then the system should display the selected Asset Category

Scenario: Verify dropdown functionality of Asset Category using mouse
Given I am on the Asset Type Code Details page
And I click on the Create New Type Code button
And I click on the Asset Category dropdown field
When I select a valid Asset Category
Then the system should allow me to select the respective Asset Category from the dropdown

Scenario: Verify Asset Category field is disabled for editing
Given I am on the Asset Type Code Details page
And I click on the Edit button of an existing Asset Type Code
When I verify the Asset Category field
Then the system should show the Asset Category field as disabled for editing

Scenario: Verify Asset Classification dropdown is disabled for editing
Given I am on the Asset Type Code Details page
And I click on the Edit button of an existing Asset Type Code
When I verify the Asset Classification dropdown
Then the system should show the Asset Classification dropdown as disabled for editing

Scenario: Verify Service dropdown is disabled for editing
Given I am on the Asset Type Code Details page
And I click on the Edit button of an existing Asset Type Code
When I verify the Service dropdown
Then the system should show the Service dropdown as disabled for editing

Scenario: Verify Type Code field is disabled for editing
Given I am on the Asset Type Code Details page
And I click on the Edit button of an existing Asset Type Code
When I verify the Type Code field
Then the system should show the Type Code field as disabled for editing

Scenario: Verify Type Code Description can be edited
Given I am on the Asset Type Code Details page
And I click on the Edit button of an existing Asset Type Code
When I edit the Type Code Description
And I click on the Update button
Then the system should allow me to edit the Type Code Description

Scenario: Verify the Save button functionality
Given I am on the Asset Type Code Details page
And I click on the Create New Type Code button
And I give all the fields valid data
When I click on the Save button
And I click on the Ok button
Then the system should display the message stating that Asset Type Code has been created successfully.