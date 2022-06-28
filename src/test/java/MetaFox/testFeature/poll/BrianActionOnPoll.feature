@MetaFox @polls  @pollsFunction_Brian
Feature:  Brian process on polls app

  @BrianSeePopUpWhenRemoveAnswers
  Scenario: Brian See Pop Up When Remove Answers
    Given the user logged in as "brian"
    When the browser opened at item "poll" and tab "/poll/add"
    And the user want to "Remove"
    Then the user see "You must have a minimum of 2 answers." displayed success
    And the user want to "OK"

  @BrianAddNewPollPublicVote
  Scenario: Brian Add New Poll Public Vote
    Given the user logged in as "brian"
    When the browser opened at item "poll" and tab "/poll/add"
    And the user action on input field "inputQuestion" with value "Polls"
    And the user add value on id "mui-3" is "Yes"
    And the user add value on id "mui-4" is "No"
    And the user add value on div "textbox"
    And the user want to add attach files
    When the user select type "Public Votes"
    And the user click on button "buttonSubmit"
    Then the user see title "IsThisAutoPoll" is displayed

  @BrainSearchPoll
  Scenario: Brian Search Poll
    Given the user logged in as "brian"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search poll" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsThisAutoPoll" is displayed

  @AnotherUserVotePoll
  Scenario: Another User Vote Poll
    Given the user logged in as "admin"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search poll" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsThisAutoPoll" is displayed

