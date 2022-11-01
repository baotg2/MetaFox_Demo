@polls  @publicPollFunction_Brian
Feature:  Brian process on public vote polls

  @BrianSeePopUpWhenRemoveAnswers
  Scenario: Brian See Pop Up When Remove Answers
    Given the user logged in as "brian"
    When the user action on "More"
    When the browser opened at item "poll" and tab "/poll/add"
    And the user want to "Remove"
    Then the user see "You must have a minimum of 2 answers." displayed success
    And the user want to "OK"

  @BrianAddNewPollPublicVote
  Scenario: Brian Add New Poll Public Vote
    Given the user logged in as "brian"
    When the user action on "More"
    When the browser opened at item "poll" and tab "/poll/add"
    And the user action on input field "question" with value "Polls"
    And the user add value "Yes" on element "1"
    And the user add value "No" on element "2"
    And the user add value on div "textbox"
    And the user attaches a photo
    When the user select type "Public votes"
    And the user clicks on button "buttonSubmit"
    Then the user see title "IsThisAutoPoll" is displayed

  @BrainSearchPoll
  Scenario: Brian Search Poll
    Given the user logged in as "brian"
    When the user action on "More"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search polls" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsThisAutoPoll" is displayed

  @AnotherUserVotePublicPoll
  Scenario: Another User Vote Poll
    Given the user logged in as "admin"
    When the user action on "More"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search polls" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsThisAutoPoll" is displayed
    And the user "admin" action vote on random options

  @BrianDeletePublicVotePoll
  Scenario: Brain Delete Public Vote Poll
    Given the user logged in as "brian"
    Given the user logged in as "brian"
    When the user action on "More"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search polls" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    When the user want to click on button label "Action Menu" and process
    And the user action on "Delete"
    Then the user see "Are you sure you want to permanently delete this poll?" displayed success
    And the user clicks on button "buttonSubmit"
    Then the user sees flash message "No polls found" displayed