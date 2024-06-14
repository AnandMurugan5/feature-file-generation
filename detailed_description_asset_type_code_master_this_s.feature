Scenario: Feature: Asset Type Code - Master

In order to define Asset Type Code Details
As a user with access to Hospital Master
I want to Create/Update/View/Delete Asset Type Code

Background:
Given I am logged in as a user with access to Hospital Master

Scenario: View Asset Type Code Details
Given I am on the Asset Type Code page
When I click on the View button of a required Asset Type Code
Then I should be able to view the required Asset Type Code Details

Scenario: Edit Asset Type Code Details
Given I am on the Asset Type Code page
When I click on the Edit button of a required Asset Type Code
Then I should be able to navigate into the Asset Type code Update screen

Scenario: Verify Edit Functionality of Type Code
Given I am on the Asset Type Code Update screen
When I try to edit the Type Code field
Then the Type Code field should be disabled to edit

Scenario: Verify Edit Functionality of Type Code Description
Given I am on the Asset Type Code Update screen
When I edit the Type Code description
Then I should be able to edit the Type Code description

Scenario: Create Asset Type Code with Valid Data
Given I am on the Asset Type Code page
When I click on the Create New Type Code button
And I enter valid Asset Category, Type Code and Type Code Description
And I click on the Save button
Then I should be able to enter the Asset Category, Type Code and Type Code Description

Scenario: Validate Save Button Functionality
Given I am on the Asset Type Code page
When I click on the Create New Type Code button
And I give all the fields valid data
And I click on the Save button
And I click on the Ok button
Then I should see a message displaying the Asset Type Code and Type Code Description created successfully

Scenario: Dropdown Functionality of Service and Asset Classification using Keyboard
Given I am on the Asset Type Code Update screen
When I click on the Service and Asset Classification dropdown fields
And I use arrow keys to navigate
And I press Enter to select an option
Then the selected Service and Asset Classification dropdown field should be displayed

Scenario: Dropdown Functionality of Service and Asset Classification
Given I am on the Asset Type Code Update screen
When I select the Service and Asset Classification dropdown fields
Then I should be able to select the respective Service and Asset Classification from the dropdown

Scenario: Verify Asset Type Code List Screen Elements
Given I am on the Asset Type Code page
When I verify the screen elements
Then I should see all the screen elements presence in the Asset Type Code List Page

Scenario: Verify Functionality of Service Dropdown
Given I am on the Asset Type Code page
When I verify the Service dropdown
Then I should see the Service dropdown default display with the All option.