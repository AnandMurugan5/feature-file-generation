Scenario: Feature: Edit and View Quota Rules in OMS application
In order to modify or view quota rules
As an OMS user
I want to be able to edit or view existing quota rules

Background:
    Given I am logged in to the OMS application

Scenario: Edit an existing quota rule
    Given I am on the Quota Rules screen
    And there is at least one existing quota rule
    When I click on the Edit icon of a specific rule
    Then I am navigated to the Edit Quota Rule screen
    And all properties of the selected rule are available for modification
    And there are Save and Cancel buttons
    And at least one rule condition persists after modification
    And I am not allowed to save a rule without any conditions

Scenario: View an existing quota rule
    Given I am on the Quota Rules screen
    And there is at least one existing quota rule
    When I click on the View icon of a specific rule
    Then I am navigated to the View Quota Rule screen
    And all properties of the selected rule are shown in read-only mode
    And there is a Back button available for returning to the quota rules list.