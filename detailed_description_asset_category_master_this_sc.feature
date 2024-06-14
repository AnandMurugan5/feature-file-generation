Scenario: Feature: Asset Category Master

In order to manage all the Asset Category details
As an authorized user
I want to be able to Create/Update/View/Delete the Asset Category

Background:
Given I am logged in as an authorized user
And I am on the 'Hospital Master' menu

Scenario: User can view the Asset Category List page
Given I click on 'Asset Category' from the 'Hospital Master' menu list
Then I should be redirected to the Asset Category List page
And I should be able to view all the Asset Category list w.r.t the filters/access rights

Scenario: User can create a new Asset Category
Given I am on the Asset Category List page
And I click on the create Asset Category option/button
Then I should be redirected to the Create Asset Category page
And I should be able to enter the required Asset Category details
And upon clicking on Save, the data should be saved
And I should be redirected to the Asset Category List page
And the newly created Asset Category should be displayed in the grid.

Scenario: User can update an existing Asset Category
Given I am on the Asset Category List page
And I click on the edit button of the required Asset Category
Then I should be redirected to the Update Asset Category page
And I should be able to edit the required Asset Category details
And upon clicking on Update, the data should be updated
And I should be redirected to the Asset Category List page
And the updated Asset Category should be displayed in the grid.

Scenario: User can view an existing Asset Category
Given I am on the Asset Category List page
And I click on the view button of the required Asset Category
Then I should be redirected to the View Asset Category page
And I should be able to view the required Asset Category details

Scenario: User can delete an existing Asset Category
Given I am on the Asset Category List page
And I click on the delete button of the required Asset Category
Then I should be prompted with a confirmation message
And upon clicking on Ok, the selected Asset Category should be deleted
And it should be removed from the Asset Category List page.

Scenario: User can create Asset Type Codes
Given I am on the Asset Category List page
And I have a valid Asset Category
And I click on the create Asset Type Code button
Then I should be redirected to the Create Asset Type Code page
And I should be able to enter the required Asset Type Code details
And upon clicking on Save, the data should be saved
And I should be redirected to the Asset Type Code List page
And the newly created Asset Type Code should be displayed in the grid.

Scenario: User cannot create Asset Type Codes without a valid Asset Category
Given I am on the Asset Type Code List page
And I click on the create Asset Type Code button
Then I should be prompted with an error message
And I should not be able to proceed with the creation of Asset Type Code.

Scenario: User can update an existing Asset Type Code
Given I am on the Asset Type Code List page
And I click on the edit button of the required Asset Type Code
Then I should be redirected to the Update Asset Type Code page
And I should be able to edit the required Asset Type Code details
And upon clicking on Update, the data should be updated
And I should be redirected to the Asset Type Code List page
And the updated Asset Type Code should be displayed in the grid.

Scenario: User can view an existing Asset Type Code
Given I am on the Asset Type Code List page
And I click on the view button of the required Asset Type Code
Then I should be redirected to the View Asset Type Code page
And I should be able to view the required Asset Type Code details

Scenario: User can delete an existing Asset Type Code
Given I am on the Asset Type Code List page
And I click on the delete button of the required Asset Type Code
Then I should be prompted with a confirmation message
And upon clicking on Ok, the selected Asset Type Code should be deleted
And it should be removed from the Asset Type Code List page.