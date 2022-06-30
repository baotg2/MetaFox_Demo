@MetaFox @polls  @publicPollFunction_Brian
Feature:  Brian process on public vote polls

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

  @AnotherUserVotePublicPoll
  Scenario: Another User Vote Poll
    Given the user logged in as "admin"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search poll" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsThisAutoPoll" is displayed
    And the user "admin" action vote on random options

  @BrianDeletePublicVotePoll
  Scenario: Brain Delete Public Vote Poll
    Given the user logged in as "brian"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search poll" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    When the user want to click on button label "actionMenu" and process
    And the user click on div "Delete" and process
    Then the user see "Are you sure you want to delete this item permanently?" displayed success
    And the user click on button "buttonSubmit"