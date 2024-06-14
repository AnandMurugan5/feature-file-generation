Scenario: Feature: Asset Type Code - Master

In order to manage Asset Type Code Details
As a user with access to Hospital Master menu
I want to create, update, view, and delete Asset Type Codes

Background:
Given I am logged into the system
And I am on the Hospital Master menu

Scenario: View Asset Type Code Details
Given I am on the Asset Type Code page
When I click on the View button for a specific Asset Type Code
Then I should be able to view the details for that Asset Type Code

Scenario: Edit Asset Type Code Details
Given I am on the Asset Type Code page
When I click on the Edit button for a specific Asset Type Code
Then I should be able to navigate to the Asset Type Code Update screen
And I should be able to edit the Asset Classification, Asset Category, and Asset Category Description fields
And I should be able to click on the Update or Cancel button

Scenario: Verify Type Code field is disabled for editing
Given I am on the Asset Type Code page
When I click on the Edit button for a specific Asset Type Code
Then the Type Code field should be disabled for editing

Scenario: Edit Type Code Description
Given I am on the Asset Type Code page
When I click on the Edit button for a specific Asset Type Code
And I edit the Type Code Description field
Then the changes should be saved

Scenario: Create New Asset Type Code with Valid Data
Given I am on the Asset Type Code page
When I click on the Create New Type Code button
And I enter valid Asset Category, Type Code, and Type Code Description
And I click on the Save button
Then the Asset Type Code should be created successfully

Scenario: Verify Save Button Functionality
Given I am on the Asset Type Code page
When I click on the Create New Type Code button
And I enter valid data for all fields
And I click on the Save button
And I click on the Ok button in the confirmation message
Then the message "<Asset Type Code> - <Type code Description> has been created successfully!" should be displayed

Scenario: Verify Dropdown Functionality of Service and Asset Classification using Keyboard
Given I am on the Asset Type Code page
When I click on the Create New Type Code button
And I click on the Service and Asset Classification dropdown fields
And I use the arrow keys to navigate
And I press Enter to select an option
Then the selected Service and Asset Classification should be displayed

Scenario: Verify Dropdown Functionality of Service and Asset Classification
Given I am on the Asset Type Code page
When I click on the Create New Type Code button
And I select a Service and Asset Classification from the dropdown fields
Then the selected Service and Asset Classification should be displayed

Scenario: Verify Screen Elements Presence in Asset Type Code List
Given I am on the Asset Type Code page
When I navigate to the Asset Type Code List
Then the Service, Asset Classification, Asset Category, Asset Category Description, Type Code, and Type Code Description fields should be present
And there should be options to View, Edit, Delete, Create New Asset Type Code, Close, Refresh, and Export

Scenario: Verify Functionality of Service Dropdown
Given I am on the Asset Type Code page
When I click on the Service dropdown
Then the default option should be All