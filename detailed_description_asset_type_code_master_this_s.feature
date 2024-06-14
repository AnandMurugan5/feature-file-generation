Scenario: Feature: Asset Type Code - Master

In order to manage Asset Type Code Details
As a user with access to Hospital Master
I want to create, update, view and delete Asset Type Codes

Background:
    Given I am logged in as a user with access to Hospital Master
    And I am on the Asset Type Code page

Scenario: View Asset Type Code
    Given a valid Asset Type Code exists
    When I click on the View button of the required Asset Type Code
    Then I should be able to view the Asset Type Code Details

Scenario: Edit Asset Type Code
    Given a valid Asset Type Code exists
    When I click on the edit button of the required Asset Type Code
    Then I should be able to navigate to the Asset Type code Update screen
    And I should see Service and Asset Classification dropdowns
    And I should see Asset Category and Type Code Description text fields
    And I should see Update and Cancel buttons

Scenario: Disable Type Code Field Editing
    Given I am on the Asset Type Code Update screen
    And I have clicked on the edit button of the required Asset Type Code
    Then the Type Code field should be disabled for editing

Scenario: Edit Type Code Description
    Given I am on the Asset Type Code Update screen
    And I have clicked on the edit button of the required Asset Type Code
    When I edit the Type Code Description
    Then the system should allow me to save the changes

Scenario: Create Asset Type Code with Valid Data
    Given I am on the Asset Type Code page
    When I click on the Create New Type Code button
    And I enter valid Asset Category, Type Code and Type Code Description
    And I click on the Save button
    Then the system should allow me to enter the Asset Category, Type Code and Type Code Description
    And the Asset Category description should be auto-fetched
    And I should see a success message

Scenario: Select Service and Asset Classification Dropdown Using Keyboard
    Given I am on the Asset Type Code Update screen
    And I have clicked on the Create New Type Code button
    When I select the Service and Asset Classification dropdown fields
    And I use the arrow keys to navigate
    And I press Enter to select an option
    Then the system should display the selected Service and Asset Classification dropdown field

Scenario: Select Service and Asset Classification Dropdown
    Given I am on the Asset Type Code Update screen
    And I have clicked on the Create New Type Code button
    When I select the Service and Asset Classification dropdown fields
    Then the system should allow me to select the respective Service and Asset Classification from the dropdown

Scenario: Verify Asset Type Code List Screen Elements
    Given I am on the Asset Type Code page
    Then I should see the following screen elements:
    - Service Search Field
    - Asset Classification Search Field
    - Asset Category Search Field
    - Asset Category Description Search Field
    - Type Code Search Field
    - Type Code Description Search Field
    - View Icon
    - Edit Button
    - Delete Button
    - Create New Asset Type Code Button
    - Close Button
    - Refresh Button
    - Export Button

Scenario: Functionality of Service Dropdown
    Given I am on the Asset Type Code page
    When I click on the Asset Type Code Details menu
    Then the system should defaulty display the Service with All Option

Scenario: Validate Asset Category, Type Code and Type Code Description with Valid Data
    Given I am on the Asset Type Code page
    When I click on the Create New Type Code button
    And I enter valid Asset Category, Type Code and Type Code Description
    And I click on the Save button
    Then the system should allow me to enter the Asset Category, Type Code and Type Code Description
    And the Asset Category description should be auto-fetched
    And I should see a success message

Scenario: Functionality of Save Button
    Given I am on the Asset Type Code page
    When I click on the Create New Type Code button
    And I enter valid data in all fields
    And I click on the Save button
    And I click on the Ok button
    Then the system should display the message "<Asset Type Code> - <Type code Description> has been created successfully!"