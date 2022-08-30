@MetaFox @photo @photoFriendFunction_Brain
Feature: Brian process on photos friend item

  @BrainAddNewPhotoFriend
  Scenario: Brian Add New Photo Friends
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/all"
    And the user verify "itemPhoto" before upload
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want upload 1 photo
    And the user want add categories is "Comedy"
    And the user see item of "Everyone"
    When the user see item of "Friends"
    And the user click on button "buttonSubmit"
    And the user see message "Media item successfully uploaded." displayed
    Then the user verify "itemPhoto" after upload

  @AnotherUserSearchPhotoIsFriend
  Scenario: Another User Search Photo Is Friend
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user see item of "Brian"
    When the user get current URL
    And the user want to click on button label "Close" and process
    Then I want to click on "Logout"
    And the user logged in as "test"
    When the user open URL detail
    Then the user see a element "Brian" is displayed on detail