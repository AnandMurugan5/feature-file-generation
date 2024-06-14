Scenario: Example Gherkin Feature File:

Feature: IFAC-X 1.0 User Requirements & System Specifications Design
In order to efficiently manage hospital assets
As a hospital administrator
I want to have a comprehensive Asset Type Code Screen

Background:
Given I am logged into the IFAC-X system

Scenario: Validating the functionality of Hospital Master menu
Given I am on the Dashboard menu
When I click on Hospital Master
Then the Hospital Master menu should expand and display all submenus

Scenario: Verify that the Asset Type Code Details page loads successfully
Given I am on the Hospital Master menu
When I click on Asset Type Code Details
Then the Asset Type Code List page should load successfully with data of the respective columns

Scenario: Validating the "UI guidelines" of Asset Type Code Details screen
Given I am on the Asset Type Code Details page
When I view the screen
Then the system should follow the "UI guidelines" of Asset Type Code Details screen successfully

Scenario: Validation of the functionality of Service Dropdown
Given I am on the Asset Type Code Details page
When I select a service with valid data from the dropdown
Then the system should validate the functionality of the Service dropdown

Scenario: Validate search functionality on 'Service' column with Valid Data
Given I am on the Asset Type Code Details page
When I search for a service with valid data in the 'Service' column
Then the system should validate the search functionality on the 'Service' column

Scenario: Validate search functionality on 'Asset Classification' column with Valid Data
Given I am on the Asset Type Code Details page
When I search for an asset classification with valid data in the 'Asset Classification' column
Then the system should validate the search functionality on the 'Asset Classification' column

Scenario: Validate search functionality on 'Asset Category' column with Valid Data
Given I am on the Asset Type Code Details page
When I search for an asset category with valid data in the 'Asset Category' column
Then the system should validate the search functionality on the 'Asset Category' column

Scenario: Validate search functionality on 'Asset Category Description' column with Valid Data
Given I am on the Asset Type Code Details page
When I search for an asset category description with valid data in the 'Asset Category Description' column
Then the system should validate the search functionality on the 'Asset Category Description' column

Scenario: Validating the save functionality of Asset Category, Type Code and Type Code Description with Invalid data
Given I am on the Asset Type Code Details page
When I enter invalid data for Asset Category, Type Code, and Type Code Description
Then the system should validate the save functionality with invalid data

Scenario: Validating the dropdown functionality of Service and Asset Classification using keyboard in Create Asset Code page
Given I am on the Create Asset Code page
When I use the keyboard to select a service and asset classification with valid data
Then the system should validate the dropdown functionality of Service and Asset Classification using the keyboard

Scenario: Validating the dropdown functionality of Service and Asset Classification
Given I am on the Create Asset Code page
When I select a service and asset classification with valid data from the dropdown
Then the system should validate the dropdown functionality of Service and Asset Classification

Scenario: Validating the functionality of Asset Category, Type Code and Type Code Description with Valid data
Given I am on the Create Asset Code page
When I enter valid data for Asset Category, Type Code, and Type Code Description
Then the system should validate the functionality of Asset Category, Type Code, and Type Code Description with valid data

Scenario: Validating the functionality of Save button
Given I am on the Create Asset Code page
When I enter valid data for all fields and click the Save button
Then the system should validate the functionality of the Save button

Scenario: Validate the Add New button Functionality
Given I am on the Create Asset Code page
When I click the Add New button
Then the system should validate the Add New button functionality

Scenario: Ensure rule id, name, description, action, type, status, stores, and actions are displayed correctly
Given I am on the Quota Rules page
When I view the page for each rule
Then the system should display unique rule id, rule name, rule description, user selectable rule action, user selectable rule type, user selectable rule status, user selectable stores, and 'Edit' and 'Delete' options for each rule