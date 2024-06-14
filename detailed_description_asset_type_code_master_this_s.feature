Scenario: Feature: Asset Type Code - Master

    In order to define Asset Type Code details
    As a user with access to Hospital Master menu
    I want to be able to Create/Update/View/Delete Asset Type Codes

    Background:
        Given I am on the Asset Type Code page

Scenario: Validating the functionality of View
        Given I am on the Asset Type Code page
        When I click on the View button of a required Asset Type Code
        Then the system should allow me to view the required Asset Type Code details

Scenario: Validating the functionality of edit icon
        Given I am on the Asset Type Code page
        When I click on the edit button of a required Asset Type Code
        Then the system should allow me to navigate to the Asset Type code Update screen

Scenario: Verify the edit functionality of Type Code
        Given I am on the Asset Type Code Update screen
        When I click on the edit button of the Type Code field
        Then the system should show the Type Code field as disabled to edit

Scenario: Verify the edit functionality of Type Code Description
        Given I am on the Asset Type Code Update screen
        When I edit the Type Code description
        Then the system should allow me to edit the Type Code description

Scenario: Validating the functionality of Asset Category, Type Code and Type Code Description with Valid data
        Given I am on the Create New Type Code page
        When I enter valid Asset Category, Type Code and Type Code Description
        And I click on the Save button
        Then the system should allow me to enter the Asset Category, Type Code and Type Code Description

Scenario: Validating the functionality of Save button
        Given I am on the Create New Type Code page
        When I give all the fields with valid data
        And I click on the Save button
        And I click on the Ok button
        Then the system should display the message '<Asset Type Code> - <Type code Description> has been created successfully!'

Scenario: Validating the dropdown functionality of Service and Asset Classification using keyboard in Create Asset Code page
        Given I am on the Create New Type Code page
        When I click on the Service and Asset Classification dropdown field
        And I use arrow keys to navigate
        And I press Enter to select an option
        Then the system should display the selected Service and Asset Classification dropdown field

Scenario: Validating the dropdown functionality of Service and Asset Classification
        Given I am on the Create New Type Code page
        When I select the respective Service and Asset Classification from the dropdown
        Then the system should allow me to select the respective Service and Asset Classification

Scenario: Verify the screen elements presence in the Asset Type Code List
        Given I am on the Asset Type Code page
        When I verify the screen elements
        Then the system should display the screen elements presence in the 'Asset Type Code List' Page

Scenario: Verification of the functionality of Service Dropdown
        Given I am on the Asset Type Code page
        When I verify the Service dropdown
        Then the system should defaultly display the Service with All Option.