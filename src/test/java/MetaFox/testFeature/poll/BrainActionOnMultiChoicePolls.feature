@MetaFox @polls  @multiplePollFunction_Brian
Feature:  Brian process on multiple choice polls

  @BrianAddNewPollMultipleChoice
  Scenario: Brian Add New Poll Public Vote
    Given the user logged in as "brian"
    When the browser opened at item "poll" and tab "/poll/add"
    And the user action on input field "inputQuestion" with value "Polls"
    And the user add value on id "mui-50" is "Yes"
    And the user add value on id "mui-51" is "No"
    And the user add value on div "textbox"
    And the user want to add attach files
    When the user select type "Public Votes"
    And the user select type "Allow multiple choice"
    And the user click on button "buttonSubmit"
    Then the user see title "IsThisAutoPoll" is displayed

  @AnotherUserVoteMultipleChoice
  Scenario: Another User Vote Poll
    Given the user logged in as "admin"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search poll" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsThisAutoPoll" is displayed
    And the user "admin" action vote on random options

  @BrianEditMultipleChoicePoll
  Scenario: Brain Edit Multiple Choice Poll
    Given the user logged in as "brian"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search poll" and typing keys "Polls"
    When the user want to click on button label "actionMenu" and process
    And the user click on div "Edit" and process
    Then the user see title "Edit poll" is displayed
    And the user see item of "Remove"
    And the user want to "OK"
    Then the user don't see "Remove" displayed on screen

  @BrianDeletePollMultipleChoicePoll
  Scenario: Brain Delete Multiple Choice Poll
    Given the user logged in as "brian"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search poll" and typing keys "Polls"
    When the user want to click on button label "actionMenu" and process
    And the user click on div "Delete" and process
    Then the user see "Are you sure you want to delete this item permanently?" displayed success
    And the user click on button "buttonSubmit"