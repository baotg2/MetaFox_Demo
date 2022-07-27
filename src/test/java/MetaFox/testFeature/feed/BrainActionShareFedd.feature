@MetaFox @forum  @BrainActionShareFedd
Feature:  Brain Action Share Feed

  @BrainShareNow
  Scenario: Brian Share Now
    Given the user logged in as "brian"
    When the user click on button "menuShareButton"
    And the user action on "Share now"
    Then the user see message "Shared successfully" displayed
    When the user want to refresh page before handle the action
    Then the user see "shared a post to newsfeed" on left menu

  @BrainShareToNewFeed
  Scenario: Brian Share To New Feed
    Given the user logged in as "brian"
    When the user click on button "menuShareButton"
    And the user action on "Share to News Feed"
    Then the user click on button "statusTagFriendsButton"
    Then the user "itemMedia" this item
    And the user click on button "buttonDone"
    And the user click on button "submit"
    Then the user see message "Shared successfully" displayed
    When the user want to refresh page before handle the action
    Then the user see "shared a post to newsfeed" on left menu

  @BrainShareOnFriendWall
  Scenario: Brian Share On Friend Wall
    Given the user logged in as "brian"
    When the user click on button "menuShareButton"
    And the user action on "Share on a friend's profile"
    Then the user "itemMedia" this item
    And the user click on button "submit"
    Then the user see message "Shared successfully" displayed
    When the user want to refresh page before handle the action

  @BrainShareOnGroup
  Scenario: Brian Share On Group
    Given the user logged in as "brian"
    When the user click on button "menuShareButton"
    And the user action on "Share on a Group"
    Then the user tag first friend on list tag
    And the user click on button "submit"
    Then the user see message "Shared successfully" displayed
    When the user want to refresh page before handle the action