@action_saveitems @brian @previewSite
Feature: Brain Action On Saved Items

  Scenario: Brian Saved Items On Feed
    Given the user logged in as "brian1"
    And the browser opened at "/"
    And within the content
    When the user opens action menu
    And the user clicks on menu item "save"
    Then the user sees successful flash message

  Scenario: Brain Add New Collection
    Given the user logged in as "brian1"
    And the browser opened at "/saved"
    And within the sidebar
    When the user clicks on button "New Collection"
    Given within the edit popup
    And the user add on "inputName" with value "TestAutoSavedList"
    And the user submits the form
    Then the user sees successful flash message

  Scenario: Brain Add Saved Items To Collection
    Given the user logged in as "brian1"
    And the browser opened at "/saved"
    And within the content
    When the user opens action menu by aria-controls "addToCollection"
    And the user adds saved items to collection
    Then the user sees successful flash message
  @focus
  Scenario: Brain Verify Collection
    Given the user logged in as "brian1"
    And the browser opened at "/saved"
    And within the sidebar
    When the user clicks on "itemTitle"

  Scenario: Brian Un-Saved Items On Feed
    Given the user logged in as "brian1"
    And the browser opened at "/"
    And within the content
    When the user opens action menu
    And the user clicks on menu item "un-save"
    Then the user sees successful flash message