@app_photo @photo_public @brian @previewSite
Feature: Brian process on photos item

  Scenario: Brian Attach Photo From Feed
    Given the user logged in as "brian"
    And the browser opened at "/"
    And within the content
    When the user want upload 1 photo
    And within the status composer
    And the user clicks on button "submit"
    Then the user sees successful flash message

  Scenario: Brian Add New Photo
    Given the user logged in as "brian"
    And the browser opened at "/photo/my"
    And within the content
    And the user verify "itemPhoto" before upload
    When the browser opened at "/photo/add"
    And the user want upload 1 photo
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    Then the user verify "itemPhoto" after upload

  Scenario: Brian Reaction On Photo
    Given the user logged in as "brian"
    And the browser opened at "/photo/my"
    And within the content
    When the user get media details
    Given within the detail photo
    And the user clicks on button "reactionButton"

  Scenario: Brain Comment On Photo
    Given the user logged in as "brian"
    And the browser opened at "/photo/my"
    And within the content
    When the user get media details
    Given within the detail photo
    And the user add comment "Amazing write-ups"
    Then the user sees text "Amazing write-ups"

  Scenario: Brian Delete Photo
    Given the user logged in as "brian"
    And the browser opened at "/photo/my"
    And within the content
    When the user get media details
    Given within the detail photo
    And the user opens action menu
    When the user clicks on menu item "delete"
    And the user sees confirm popup

#  Scenario: Brian Attach Photo From User Profile
#    Given the user logged in as "brian"
#    Then the browser opened at "/photo/my"
#    And the user verify "itemPhoto" before upload
#    And the user back to "linkLogo" page
#    And the user want upload 1 photo
#    Then the user clicks on button "submit"
#    And the user back to "linkLogo" page
#    When the user clicks on "More"
#    Then the browser opened at item "photo" and tab "/photo/my"
#    Then the user verify "itemPhoto" after upload

  Scenario: Brain Feature Photos
    Given the user logged in as "brian"
    And the browser opened at "/photo/my"
    And within the content
    When the user get media details
    Given within the detail photo
    And the user opens action menu
    When the user clicks on menu item "feature"
    Then the user sees successful flash message

  Scenario: Brain UnFeature Photos
    Given the user logged in as "brian"
    And the browser opened at "/photo/my"
    And within the content
    When the user get media details
    Given within the detail photo
    And the user opens action menu
    When the user clicks on menu item "unfeature"
    Then the user sees successful flash message

  Scenario: Brian Add Cover Image
    Given the user logged in as "brian"
    And the browser opened at "/photo/my"
    And within the content
    When the user get media details
    Given within the detail photo
    And the user opens action menu
    When the user clicks on menu item "make-cover"
    Then the user sees successful flash message