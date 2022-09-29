@MetaFox @photo @photoFunction_Brain
Feature: Brian process on photos item

  @BrainAddNewPhoto
  Scenario: Brian Add New Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/all"
    And the user verify "itemPhoto" before upload
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want upload 1 photo
    And the user want add categories is "Comedy"
    And the user click on button "buttonSubmit"
    And the user see message "Media item successfully uploaded." displayed
    Then the user verify "itemPhoto" after upload

  @BrianReactionOnPhoto
  Scenario: Brian Reaction On Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user see item of "Brian"
    And the user click on button "reactionButton"
    Then the user see result of "reactionResult" displayed

  @BrianDeletePhoto
  Scenario: Brian Delete Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user click on "actionMenuButton" to access blog
    Then the user "Delete" this item
    And the user click on button "buttonSubmit"
    Then the user see message "Photo deleted successfully" displayed

  @BrianReportPhoto
  Scenario: Brian Report Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/all"
    And the user see title "All Photos" is displayed
    And the user see item of "admin"
    And the user click on button "actionMenuButton" to action
    And the user "report" this item
    Then the user see main form "form" is displayed

  @BrianAttachPhotoFromFeed
  Scenario: Brian Attach Photo From Feed
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user verify "itemPhoto" before upload
    And the user back to "linkLogo" page
    And the user want upload 1 photo
    Then the user click on button "submit"
    Then the browser opened at item "photo" and tab "/photo/my"
    Then the user verify "itemPhoto" after upload

  @BrianAttachPhotoFromUserProfile
  Scenario: Brian Attach Photo From User Profile
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user verify "itemPhoto" before upload
    And the user back to "linkLogo" page
    And the user want upload 1 photo
    Then the user click on button "submit"
    And the user back to "linkLogo" page
    When the user action on "More"
    Then the browser opened at item "photo" and tab "/photo/my"
    Then the user verify "itemPhoto" after upload

  @BrianFeaturePhotos
  Scenario: Brain Feature Photos
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user click on "actionMenuButton" to access blog
    And the user "feature" this item
    Then the user see message "Photo featured successfully." displayed
    Then the user see label of action "featured" is displayed

  @BrianUnFeaturePhotos
  Scenario: Brain UnFeature Photos
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user click on "actionMenuButton" to access blog
    And the user "unfeature" this item
    Then the user see message "Photo unfeatured successfully." displayed

  @BrainShareNowPhotos
  Scenario: Brain Share Now Photos
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user see item of "Brian"
    When the user click on button "menuShareButton"
    When the user action on "Share now"
    And the user want to click on button label "Close" and process
    And the user back to "linkLogo" page
    Then the user see "shared a post to newsfeed" on left menu

  @BrainShareToNewFeedPhotos
  Scenario: Brain Share Now Photos
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user see item of "Brian"
    When the user click on button "menuShareButton"
    When the user action on "Share to News Feed"
    And the user click on button "submit"
    When the user want to click on button label "Close" and process
    And the user back to "linkLogo" page
    Then the user see "shared a post to newsfeed" on left menu

  @BrianAddCoverImage
  Scenario: Brian Add Cover Image
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user want to click on button label "actionMenu" and process
    And the user "make-cover" this item
    Then the user see message "Cover picture updated successfully" displayed
    And the user want to access "userAvatar"
    Then the user see "updated his cover photo" on left menu