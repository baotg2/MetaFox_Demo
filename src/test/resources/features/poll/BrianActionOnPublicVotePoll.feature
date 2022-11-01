@polls  @publicPollFunction_Brian
Feature:  Brian process on public vote polls

  @BrianSeePopUpWhenRemoveAnswers
  Scenario: Brian See Pop Up When Remove Answers
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab "/poll/add"
    And the user want to "Remove"
    Then the user sees text "You must have a minimum of 2 answers." displayed success
    And the user want to "OK"

  @BrianAddNewPollPublicVote
  Scenario: Brian Add New Poll Public Vote
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab "/poll/add"
    And the user clicks on input field "question" with value "Polls"
    And the user add value "Yes" on element "1"
    And the user add value "No" on element "2"
    And the user adds description
    And the user attaches a photo
    When the user select type "Public votes"
    And the user clicks on button "buttonSubmit"
    Then the user seestitle "IsThisAutoPoll" is displayed

  @BrainSearchPoll
  Scenario: Brian Search Poll
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user sees search field "Search polls" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    Then the user seestitle "IsThisAutoPoll" is displayed

  @AnotherUserVotePublicPoll
  Scenario: Another User Vote Poll
    Given the user logged in as "admin"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user sees search field "Search polls" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    Then the user seestitle "IsThisAutoPoll" is displayed
    And the user "admin" action vote on random options

  @BrianDeletePublicVotePoll
  Scenario: Brain Delete Public Vote Poll
    Given the user logged in as "brian"
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user sees search field "Search polls" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    When the user want to click on button label "Action Menu" and process
    And  the user clicks on menu item "delete"
    Then the user sees text "Are you sure you want to permanently delete this poll?" displayed success
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message