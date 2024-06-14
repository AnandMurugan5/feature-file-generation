Scenario: Feature: Asset Type Code - Master

In order to manage Asset Type Code Details
As a user with appropriate access
I want to create, update, view, and delete Asset Type Codes

Background:
Given I am logged in to the system
And I have appropriate access to the Hospital Master menu

Scenario: View Asset Type Code Details
Given I am on the Asset Type Code page
When I click on the View button of a required Asset Type Code
Then I should be able to view the required Asset Type Code Details

Scenario: Edit Asset Type Code
Given I am on the Asset Type Code page
When I click on the Edit button of a required Asset Type Code
Then I should be able to navigate into the Asset Type code Update screen
And I should see the Service and Asset Classification dropdown fields
And I should see the Asset Category, Type Code, and Type Code Description text fields
And I should see the Update and Cancel buttons

Scenario: Verify Disabled Type Code field
Given I am on the Asset Type Code page
When I click on the Edit button of a required Asset Type Code
Then the Type Code field should be disabled to edit

Scenario: Edit Type Code Description
Given I am on the Asset Type Code page
When I click on the Edit button of a required Asset Type Code
And I edit the Type Code Description
Then I should be able to save the changes successfully

Scenario: Create New Type Code with valid data
Given I am on the Asset Type Code page
When I click on the Create New Type Code button
And I enter a valid Asset Category, Type Code, and Type Code Description
And I click on the Save button
Then the system should allow me to enter the Asset Category, Type Code, and Type Code Description
And the Asset Category description should be auto-fetched

Scenario: Save New Type Code
Given I am on the Asset Type Code page
When I click on the Create New Type Code button
And I enter all fields with valid data
And I click on the Save button
And I click on the Ok button
Then the system should display the message "<Asset Type Code> - <Type code Description> has been created successfully!"

Scenario: Dropdown Functionality of Service and Asset Classification (via keyboard)
Given I am on the Create New Type Code page
When I click on the Service and Asset Classification dropdown fields
And I use the arrow keys to navigate
And I press Enter to select an option
Then the selected Service and Asset Classification should be displayed in the dropdown field

Scenario: Dropdown Functionality of Service and Asset Classification
Given I am on the Create New Type Code page
When I select the Service and Asset Classification dropdown fields
Then I should be able to select the respective Service and Asset Classification from the dropdown

Scenario: Asset Type Code List Elements Presence
Given I am on the Asset Type Code page
When I verify the screen elements
Then I should see the Service, Asset Classification, Asset Category, Asset Category Description, Type Code, Type Code Description, View icon, Edit button, Delete button, Create New Asset Type Code button, Close button, Refresh button, and Export button

Scenario: Functionality of Service Dropdown
Given I am on the Asset Type Code page
When I verify the Service dropdown
Then the Service dropdown should defaulty display the All option.