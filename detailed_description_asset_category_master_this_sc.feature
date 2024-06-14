Scenario: Feature: Asset Category Master

In order to manage Asset Category Details
As a user with access rights
I want to navigate to Asset Category Master screen

Background:
Given user is logged in and has access rights to Hospital Master menu

Scenario: View Asset Category List
Given user is on Asset Category List page
When user views the list
Then all asset category details are displayed

Scenario: Create New Asset Category
Given user is on Asset Category List page
When user clicks on Create Asset Category button
Then user is redirected to Create Asset Category screen

Scenario: Save Asset Category with Valid Data
Given user is on Create Asset Category screen
When user enters valid Asset Category details
And clicks on Save button
Then system should save the data
And user is redirected to Asset Category List page
And message 'Asset Category has been created successfully!' is displayed

Scenario: Save Asset Category with Invalid Data
Given user is on Create Asset Category screen
When user enters invalid Asset Category details
And clicks on Save button
Then system should not save the data
And appropriate error message is displayed

Scenario: Update Asset Category
Given user is on Asset Category List page
When user clicks on Edit button for a specific Asset Category
Then user is redirected to Update Asset Category screen

Scenario: Update Asset Category with Valid Data
Given user is on Update Asset Category screen
When user edits valid Asset Category details
And clicks on Update button
Then system should save the data
And user is redirected to Asset Category List page
And message 'Asset Category has been updated successfully!' is displayed

Scenario: Update Asset Category with Invalid Data
Given user is on Update Asset Category screen
When user edits invalid Asset Category details
And clicks on Update button
Then system should not save the data
And appropriate error message is displayed

Scenario: Delete Asset Category
Given user is on Asset Category List page
When user clicks on Delete button for a specific Asset Category
Then system should prompt for confirmation
And on confirmation, system should delete the Asset Category
And message 'Asset Category has been deleted successfully!' is displayed

Scenario: Create Asset Type Code without Asset Category
Given user is on Asset Type Code Details screen
When user clicks on Create New Type Code button
And user does not select Asset Category
Then system should not allow to save the data
And appropriate error message is displayed

Scenario: Create Asset Type Code with Asset Category
Given user is on Asset Type Code Details screen
When user clicks on Create New Type Code button
And user selects Asset Category
And enters valid Type Code and Type Code Description
And clicks on Save button
Then system should save the data
And user is redirected to Asset Type Code Details screen
And message '<Asset Type Code> - <Type code Description> has been created successfully!' is displayed

Scenario: View Asset Type Code Details
Given user is on Asset Type Code Details screen
When user clicks on View button for a specific Asset Type Code
Then user is redirected to View Asset Type Code screen
And all details of the Asset Type Code are displayed

Scenario: Update Asset Type Code
Given user is on Asset Type Code Details screen
When user clicks on Edit button for a specific Asset Type Code
Then user is redirected to Update Asset Type Code screen

Scenario: Update Asset Type Code with Valid Data
Given user is on Update Asset Type Code screen
When user edits valid Asset Type Code details
And clicks on Update button
Then system should save the data
And user is redirected to Asset Type Code Details screen
And message 'Asset Type Code has been updated successfully!' is displayed

Scenario: Update Asset Type Code with Invalid Data
Given user is on Update Asset Type Code screen
When user edits invalid Asset Type Code details
And clicks on Update button
Then system should not save the data
And appropriate error message is displayed

Scenario: Verify Service Dropdown is Disabled
Given user is on Update Asset Type Code screen
When user clicks on Edit button for a specific Asset Type Code
And user verifies the Service dropdown
Then the Service dropdown should be disabled

Scenario: Verify Asset Classification Dropdown is Disabled
Given user is on Update Asset Type Code screen
When user clicks on Edit button for a specific Asset Type Code
And user verifies the Asset Classification dropdown
Then the Asset Classification dropdown should be disabled

Scenario: Verify Asset Category Field is Disabled
Given user is on Update Asset Type Code screen
When user clicks on Edit button for a specific Asset Type Code
And user verifies the Asset Category field
Then the Asset Category field should be disabled

Scenario: Verify Type Code Field is Disabled
Given user is on Update Asset Type Code screen
When user clicks on Edit button for a specific Asset Type Code
And user verifies the Type Code field
Then the Type Code field should be disabled

Scenario: Verify Type Code Description Field is Editable
Given user is on Update Asset Type Code screen
When user clicks on Edit button for a specific Asset Type Code
And user verifies the Type Code Description field
Then the Type Code Description field should be editable

Scenario: Verify Dropdown Functionality using Keyboard
Given user is on Create New Type Code screen
When user selects the Service and Asset Classification dropdown field using keyboard
Then user should be able to navigate the dropdown options using arrow keys
And press Enter to select an option

Scenario: Verify Dropdown Functionality using Mouse
Given user is on Create New Type Code screen
When user selects the Service and Asset Classification dropdown field using mouse
Then user should be able to select the respective Service and Asset Classification from the dropdown

Scenario: Verify Asset Classification Dropdown is Disabled
Given user is on Update Asset Type Code screen
When user clicks on Edit button for a specific Asset Type Code
And user verifies the Asset Classification dropdown
Then the Asset Classification dropdown should be disabled