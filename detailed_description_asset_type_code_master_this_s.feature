Scenario: Feature: Asset Type Code - Master

In order to manage Asset Type Code Details
As a user with access to Hospital Master menu
I want to be able to Create/Update/View/Delete Asset Type Code

Background:
Given the user has access to the Hospital Master menu

Scenario: View Asset Type Code Details
Given the user is on the Asset Type Code page
When the user clicks on View button of a required Asset Type Code
Then the system should allow the user to view the required Asset Type Code Details

Scenario: Edit Asset Type Code Details
Given the user is on the Asset Type Code page
When the user clicks on Edit button of a required Asset Type Code
Then the system should allow the user to navigate into the Asset Type code Update screen
And the following fields should be displayed - Service[Dropdown], Asset Classification[Dropdown], Asset Category[Text Field], Asset Category Description[Text Field], Type Code[Text Field], Type Code Description[Text Field], Update[Button], Cancel[Button]

Scenario: Disable Type Code field
Given the user is on the Asset Type Code Update screen
When the user clicks on Edit button of a required Asset Type Code
Then the system should show the Type Code field as disabled to edit

Scenario: Edit Type Code Description
Given the user is on the Asset Type Code Update screen
When the user edits the Type Code description
Then the system should allow the user to edit the Type Code description

Scenario: Create New Type Code with Valid data
Given the user is on the Asset Type Code page
When the user clicks on Create New Type Code button
And enters Valid Asset Category, Type Code and Type Code Description
And clicks on the Save button
Then the system should allow the user to enter the Asset Category, Type Code and Type Code Description
And the Asset Category description should be auto fetched

Scenario: Save New Type Code
Given the user is on the Asset Type Code Update screen
When the user gives all the Field with valid data
And clicks on the Save button
And clicks Ok Button
Then the system should display the message as ‘’<Asset Type Code> - <Type code Description> has been created successfully!’’

Scenario: Use Keyboard to Select Service and Asset Classification
Given the user is on the Asset Type Code Update screen
When the user clicks on the Service and Asset Classification dropdown field
And uses arrow keys to navigate
And presses Enter to select an option
Then the system should display the selected Service and Asset Classification dropdown field

Scenario: Select Service and Asset Classification from Dropdown
Given the user is on the Asset Type Code Update screen
When the user selects the respective Service and Asset Classification from the dropdown
Then the system should allow the user to select the respective Service and Asset Classification

Scenario: Screen Elements in Asset Type Code List
Given the user is on the Asset Type Code page
When the user verifies the screen elements
Then the system should display the screen elements presence in the 'Asset Type Code List' Page
And the following elements should be displayed - Service[Search Field], Asset Classification[Search Field], Asset Category[Search Field], Asset Category Description[Search Field], Type Code[Search Field], Type Code Description[Search Field], View[Icon], Edit[Button], Delete[Button], Create New Asset Type Code[Button], Close[Button], Refresh[Button], Export[Button]

Scenario: Service Dropdown Functionality
Given the user is on the Asset Type Code page
When the user verifies the Service dropdown
Then the system should display the Service with All Option as default


Note:
All scenarios should have validations for all fields and techniques used.