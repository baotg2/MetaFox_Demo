@MetaFox @feed  @BrainActionShareFeed
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
    Then the user "itemUndefined" this item
    And the user click on button "buttonDone"
    And the user click on button "submit"
    #Then the user see message "Post has been created successfully" displayed
    When the user want to refresh page before handle the action
    Then the user see "shared a post to newsfeed" on left menu

  @BrainShareOnFriendWall
  Scenario: Brian Share On Friend Wall
    Given the user logged in as "brian"
    When the user click on button "menuShareButton"
    When the user "share_on_friends" this item
    Then the user "itemUndefined" this item
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

  @BriaActionOnGlobalSearch
  Scenario: Brian Action On Global Search
    Given the user logged in as "brian"
    When the user see search field "Search" and typing keys "test"
    Then the user see title "Search Results" is displayed
    And the user action on "People"
    And the user click on element link text a "test"
    Then the user see div element "whatsHappening" displayed

  @BrianSearchRandomKeywords
  Scenario: Brian Search Random Keywords
    Given the user logged in as "brian"
    When the user see search field "Search" and typing keys "###"
    Then the user see  tab "Trending" displayed success
