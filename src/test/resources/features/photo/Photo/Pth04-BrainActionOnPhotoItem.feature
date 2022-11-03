@app_photo @photo_public @brian
Feature: Brian process on photos item

  Scenario: Brian Add New Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/all"
    And the user verify "itemPhoto" before upload
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want upload 1 photo
    And the user adds category "Comedy"
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    Then the user verify "itemPhoto" after upload

  Scenario: Brian Reaction On Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user sees item of "Brian"
    And the user clicks on button "reactionButton"
    Then the user sees result of "reactionResult" displayed

  Scenario: Brian Delete Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user opens action menu
    Then  the user clicks on menu item "delete"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

    Given the user logged in as "admin"
    Then the browser opened at item "photo" and tab "/photo/all"
    And the user sees text "All Photos"
    And the user sees item of "Brian"
    And the user clicks on button "actionMenuButton" to action
    When the user clicks on item "report"
    Then the user sees main form "form"

  Scenario: Brian Attach Photo From Feed
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user verify "itemPhoto" before upload
    And the user back to "linkLogo" page
    And the user want upload 1 photo
    Then the user clicks on button "submit"
    Then the browser opened at item "photo" and tab "/photo/my"
    Then the user verify "itemPhoto" after upload

  Scenario: Brian Attach Photo From User Profile
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user verify "itemPhoto" before upload
    And the user back to "linkLogo" page
    And the user want upload 1 photo
    Then the user clicks on button "submit"
    And the user back to "linkLogo" page
    When the user clicks on "More"
    Then the browser opened at item "photo" and tab "/photo/my"
    Then the user verify "itemPhoto" after upload

  Scenario: Brain Feature Photos
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user opens action menu
    And the user clicks on "Feature"
    Then the user sees successful flash message
    Then the user sees label of action "featured"

  Scenario: Brain UnFeature Photos
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user opens action menu
    And the user clicks on "Unfeature"
    Then the user sees successful flash message

  Scenario: Brain Share Now Photos
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user sees item of "Brian"
    When the user clicks on button "menuShareButton"
    When the user clicks on "Share now"
    And the user want to click on button label "Close" and process
    And the user back to "linkLogo" page
    Then the user sees text "shared a post to newsfeed "

  Scenario: Brain Share Now Photos
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user sees item of "Brian"
    When the user clicks on button "menuShareButton"
    When the user clicks on "Share to News Feed"
    And the user clicks on button "submit"
    When the user want to click on button label "Close" and process
    And the user back to "linkLogo" page
    Then the user sees text "shared a post to newsfeed "

  Scenario: Brian Add Cover Image
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user want to click on button label "Action Menu" and process
    And the user clicks on "Make Cover Photo"
    Then the user sees successful flash message
    And the user want to access "userAvatar"
    Then the user sees text "updated her cover photo "