Scenario: Example Gherkin Feature File:

Feature: IFAC-X 1.0 User Requirements & System Specifications Design
In order to effectively manage hospital assets
As a hospital asset manager
I want to use IFAC-X to track and manage asset types and categories.

Background:
Given I am a hospital asset manager
And I have access to IFAC-X

Scenario: Validating the functionality of Hospital Master menu
Given I am on the IFAC-X dashboard
When I click on the Hospital Master menu
Then the submenus of Hospital Masters should be displayed

Scenario: Verify that the Asset Type Code Details page loads successfully
Given I am on the Hospital Master menu
When I click on Asset Type Code Details
Then the Asset Type Code List page should load successfully

Scenario: Validating the "UI guidelines" of Asset Type Code Details screen
Given I am on the Asset Type Code Details page
When I observe the page
Then the page should follow the "UI guidelines" of Asset Type Code Details screen successfully

Scenario: Validation of the functionality of Service Dropdown
Given I am on the Asset Type Code Details page
When I select a service from the Service dropdown
Then the service should be displayed in the relevant field

Scenario: Validate search functionality on 'Service' column with Valid Data
Given I am on the Asset Type Code Details page
And I have entered a valid service in the search bar for the Service column
When I click search
Then the relevant data for that service should be displayed

Scenario: Validate search functionality on 'Asset Classification' column with Valid Data
Given I am on the Asset Type Code Details page
And I have entered a valid asset classification in the search bar for the Asset Classification column
When I click search
Then the relevant data for that asset classification should be displayed

Scenario: Validate search functionality on 'Asset Category' column with Valid Data
Given I am on the Asset Type Code Details page
And I have entered a valid asset category in the search bar for the Asset Category column
When I click search
Then the relevant data for that asset category should be displayed

Scenario: Validate search functionality on 'Asset Category Description' column with Valid Data
Given I am on the Asset Type Code Details page
And I have entered a valid asset category description in the search bar for the Asset Category Description column
When I click search
Then the relevant data for that asset category description should be displayed

Scenario: Validating the save functionality of Asset Category, Type Code and Type Code Description with Invalid data
Given I am on the Asset Type Code Details page
And I have entered invalid data for Asset Category, Type Code, or Type Code Description
When I click save
Then an error message should be displayed

Scenario: Validating the dropdown functionality of Service and Asset Classification using keyboard in Create Asset Code page
Given I am on the Create Asset Code page
And I want to select a service or asset classification using the keyboard
When I press the appropriate key(s)
Then the service or asset classification should be selected

Scenario: Validating the dropdown functionality of Service and Asset Classification
Given I am on the Create Asset Code page
And I want to select a service or asset classification using the dropdown
When I select the appropriate option
Then the service or asset classification should be displayed in the relevant field

Scenario: Validating the functionality of Asset Category, Type Code and Type Code Description with Valid data
Given I am on the Create Asset Code page
And I have entered valid data for Asset Category, Type Code, and Type Code Description
When I click save
Then the new asset code should be created successfully

Scenario: Validating the functionality of Save button
Given I am on the Create Asset Code page
And I have entered valid data for all fields
When I click save
Then the new asset code should be created successfully

Scenario: Validate the Add New button Functionality
Given I am on the Asset Type Code Details page
When I click the Add New button
Then I should be redirected to the Create Asset Code page

Scenario: Ensure rule id is unique
Given I am on the Quota Rules page
And I am viewing a rule
Then the rule id should be unique

Scenario: Ensure rule name is displayed
Given I am on the Quota Rules page
And I am viewing a rule
Then the rule name should be displayed

Scenario: Ensure rule description is displayed
Given I am on the Quota Rules page
And I am viewing a rule
Then the rule description should be displayed

Scenario: Ensure rule action is user selectable
Given I am on the Quota Rules page
And I am viewing a rule
Then the rule action should be selectable by the user

Scenario: Ensure rule type is user selectable
Given I am on the Quota Rules page
And I am viewing a rule
Then the rule type should be selectable by the user

Scenario: Ensure rule status is user selectable
Given I am on the Quota Rules page
And I am viewing a rule
Then the rule status should be selectable by the user

Scenario: Ensure stores are user selectable
Given I am on the Quota Rules page
And I am viewing a rule
Then the stores should be selectable by the user

Scenario: Ensure actions are available for each rule
Given I am on the Quota Rules page
And I am viewing a rule
Then the Edit and Delete actions should be available for that rule.