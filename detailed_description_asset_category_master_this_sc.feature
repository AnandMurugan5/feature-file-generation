Scenario: Feature: Asset Category Master

Background:
Given the user has access to the Hospital Master menu

Scenario: Create Asset Category
Given the user is on the Asset Category List page
When the user clicks on the Create Asset Category button
And fills in all required fields with valid data
And clicks on the Save button
Then the system should save the data
And redirect the user to the Asset Category List page
And display a success message

Scenario: View Asset Category details
Given the user is on the Asset Category List page
When the user clicks on the View button for a specific Asset Category
Then the system should display the Asset Category details

Scenario: Edit Asset Category details
Given the user is on the Asset Category List page
When the user clicks on the Edit button for a specific Asset Category
And updates any required fields
And clicks on the Save button
Then the system should save the updated data
And redirect the user to the Asset Category List page
And display a success message

Scenario: Delete Asset Category
Given the user is on the Asset Category List page
When the user clicks on the Delete button for a specific Asset Category
Then the system should prompt the user for confirmation
And if confirmed, delete the Asset Category and its associated Asset Type Codes
And display a success message

Scenario: Create Asset Type Code
Given the user is on the Asset Category List page
When the user clicks on the Create Asset Type Code button for a specific Asset Category
And fills in all required fields with valid data
And clicks on the Save button
Then the system should save the data
And redirect the user to the Asset Type Code List page
And display a success message

Scenario: View Asset Type Code details
Given the user is on the Asset Type Code List page for a specific Asset Category
When the user clicks on the View button for a specific Asset Type Code
Then the system should display the Asset Type Code details

Scenario: Edit Asset Type Code details
Given the user is on the Asset Type Code List page for a specific Asset Category
When the user clicks on the Edit button for a specific Asset Type Code
And updates any required fields
And clicks on the Update button
Then the system should save the updated data
And redirect the user to the Asset Type Code List page
And display a success message

Scenario: Delete Asset Type Code
Given the user is on the Asset Type Code List page for a specific Asset Category
When the user clicks on the Delete button for a specific Asset Type Code
Then the system should prompt the user for confirmation
And if confirmed, delete the Asset Type Code and its associated Assets
And display a success message

Scenario: Asset Category and Asset Type Code linkage
Given the user is creating a new Asset
When the user selects a specific Asset Category and Asset Type Code
Then the system should link the Asset Category and Asset Type Code together to create the Asset in the Asset register

Scenario: Asset Category validation
Given the user is creating or updating an Asset Type Code
When the user selects an invalid Asset Category
Then the system should display an error message

Scenario: Asset Type Code validation
Given the user is creating or updating an Asset Type Code
When the user enters an invalid Asset Type Code
Then the system should display an error message

Scenario: Asset Type Code Description validation
Given the user is creating or updating an Asset Type Code
When the user enters an invalid Asset Type Code Description
Then the system should display an error message

Scenario: Service dropdown validation
Given the user is editing an Asset Type Code
When the user tries to edit the Service dropdown
Then the system should disable the Service dropdown

Scenario: Asset Classification dropdown validation
Given the user is editing an Asset Type Code
When the user tries to edit the Asset Classification dropdown
Then the system should disable the Asset Classification dropdown

Scenario: Category field validation
Given the user is editing an Asset Type Code
When the user tries to edit the Category field
Then the system should disable the Category field

Scenario: Type Code validation
Given the user is editing an Asset Type Code
When the user tries to edit the Type Code field
Then the system should disable the Type Code field

Scenario: Type Code Description validation
Given the user is editing an Asset Type Code
When the user updates the Type Code Description field
Then the system should allow the user to edit the Type Code Description field

Scenario: Service and Asset Classification dropdown functionality
Given the user is creating a new Asset Type Code
When the user selects a Service and Asset Classification from the dropdown
Then the system should allow the user to select the respective Service and Asset Classification

Scenario: Service and Asset Classification dropdown functionality using keyboard
Given the user is creating a new Asset Type Code
When the user navigates the Service and Asset Classification dropdowns using arrow keys and selects an option with Enter
Then the system should display the selected Service and Asset Classification dropdown fields

Scenario: Save button functionality
Given the user is creating a new Asset Type Code
When the user fills in all required fields with valid data
And clicks on the Save button
And clicks on the Ok button in the success message popup
Then the system should display a success message containing the Asset Type Code and its Description