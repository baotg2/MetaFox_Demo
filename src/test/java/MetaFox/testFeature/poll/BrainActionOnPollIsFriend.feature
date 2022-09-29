@MetaFox @polls  @multiplePollFunctionIsFriend_Brian
Feature:  Brian process on multiple choice polls is friend

  @BrianAddNewPollMultipleChoiceIsFriend
  Scenario: Brian Add New Poll Public Vote Is Friend
    Given the user logged in as "brian"
    When the user action on "More"
    When the browser opened at item "poll" and tab "/poll/add"
    And the user action on input field "inputQuestion" with value "Polls"
    And the user add value "Yes" on element "1"
    And the user add value "No" on element "2"
    And the user add value on div "textbox"
    And the user want to add attach files
    When the user select type "Public votes"
    And the user select type "Allow multiple choice"
    And the user see item of "Everyone"
    When the user see item of "Friends"
    And the user click on button "buttonSubmit"
    Then the user see title "IsThisAutoPoll" is displayed

  @AnotherUserSearchPollIsFriend
  Scenario: Another User Search Poll Is Friend
    Given the user logged in as "test"
    When the user action on "More"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search polls" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsThisAutoPoll" is displayed

  @AnotherUserSearchPollIsNotFriend
  Scenario: Another User Search Poll is not friend
    Given the user logged in as "terry"
    When the user action on "More"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search polls" and typing keys "Polls"
    Then the user see "No polls found" on left menu

  @BrainSharePollFriend
  Scenario: Brian Share Poll is Friend
    Given the user logged in as "brian"
    When the user action on "More"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search polls" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    And the user click on button "menuShareButton"
    When the user action on "Share now"
    Then the user see message "Shared successfully" displayed
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user see "shared a post to newsfeed" on left menu
    Then the user see a element "IsThisAutoPoll" is displayed on detail

  @AnotherUserAccessOnBrianProfile
  Scenario: Another user access Brian profile
    Given the user logged in as "terry"
    Then the user see search field "Search" and typing keys "brian"
    And the user want to click on "/brian"
    Then the user see "shared a post to newsfeed" on left menu
    Then the user see "Owner of this post has limited who can view this post." is displayed on user profile

  @BrainDeletePollsIsFriendJustAdded
  Scenario: Brain Delete Polls Is Friend Just Added
    Given the user logged in as "brian"
    When the user action on "More"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search polls" and typing keys "Polls"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user click on "actionMenuButton" to access blog
    Then the user "delete" this item
    Then the user see "Are you sure you want to permanently delete this poll?" displayed success
    And the user click on button "buttonSubmit"
    Then the user see message "Poll deleted successfully" displayed


