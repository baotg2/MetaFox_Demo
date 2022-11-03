@app_photo @photo_friend @brian
Feature: Brian process on photos friend item

  @BrainAddNewPhotoFriend
  Scenario: Brian Add New Photo Friends
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/all"
    And the user verify "itemPhoto" before upload
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want upload 1 photo
    And the user adds category "Comedy"
    And the user sees item of "Everyone"
    When the user sees item of "Friends"
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    Then the user verify "itemPhoto" after upload

  @AnotherUserSearchPhotoIsFriend
  Scenario: Another User Search Photo Is Friend
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user sees item of "Brian"
    When the user get current URL
    And the user want to click on button label "Close" and process
    Then I want to click on "Logout"
    And the user logged in as "test"
    When the user open URL detail
    Then the user sees text "Brian"

  @BrianShareNowOnPhotoFriend
  Scenario: Brain Share Now On Photo Friend
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user sees item of "Brian"
    And the user clicks on button "menuShareButton"
    When the user clicks on "Share now"
    Then the user sees successful flash message
    And the user want to click on button label "Close" and process
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user sees text "shared a post to newsfeed "

  @AnotherUserAccessOnBrianProfileAndSeePhoto
  Scenario: Another user access Brian profile and see Photo
    Given the user logged in as "terry"
    Then the user searches with text "brian"
    And the user clicks on link "/brian"
    Then the user sees text "shared a post to newsfeed "

  @BrianFeaturePhotosFriends
  Scenario: Brain Feature Photos Friends
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user opens action menu
    And the user clicks on "Feature"
    Then the user sees successful flash message
    Then the user sees label of action "featured"

  @BrianUnFeaturePhotosFriends
  Scenario: Brain UnFeature Photos Friends
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user opens action menu
    And the user clicks on "Unfeature"
    Then the user sees successful flash message