@app_page @brian @previewSite
Feature: Brian process on page app

  Scenario: AdminSeePendingPhoto
    Given the user logged in as "admin"
    And the browser opened at "/page/add"
    And within the content
    When the user clicks on button "buttonSubmit"
    Then the user sees error message "Title is required."

  Scenario: Brain Add New Page
    Given the user logged in as "brian1"
    And the browser opened at "/page/add"
    Given within the content
    And the user add on "inputName" with value "IsPageAutoTest"
    And the user types a sentence in "inputText"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Brain Verify Total Like Page
    Given the user logged in as "brian1"
    And the browser opened at "/page"
    And within the sidebar
    When the user searches with text "IsPageAutoTest"
    And within the content
    And the user clicks on the item title
    Given within the subside
    Then the user see message "1 person liked this page"

  Scenario: Brain change cover page
    Given the user logged in as "brian1"
    And the browser opened at "/page"
    And within the sidebar
    When the user searches with text "IsPageAutoTest"
    And within the content
    And the user clicks on the item title
    Given within the slot top
    And the user want upload 1 photo
    And the user "Save"
    Then the user sees successful flash message

  Scenario: Brain reaction post on group
    Given the user logged in as "brian1"
    And the browser opened at "/page"
    And within the sidebar
    When the user searches with text "IsPageAutoTest"
    And within the content
    And the user clicks on the item title
    And the user clicks on button "reactionButton"