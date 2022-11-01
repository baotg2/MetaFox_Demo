@MetaFox @polls  @multiplePollFunction_Brian
Feature:  Brian process on multiple choice polls

  @BrianAddNewPollMultipleChoice
  Scenario: Brian Add New Poll Public Vote
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab "/poll/add"
    And the user clicks on input field "question" with value "Polls"
    And the user add value "Yes" on element "1"
    And the user add value "No" on element "2"
    And the user add value on div "textbox"
    And the user attaches a photo
    When the user select type "Public votes"
    And the user select type "Allow multiple choices"
    And the user clicks on button "buttonSubmit"
    Then the user see title "IsThisAutoPoll" is displayed

  @BrainSearchMultipleChoicePoll
  Scenario: Brian Search Poll
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search polls" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsThisAutoPoll" is displayed

  @AnotherUserVoteMultipleChoice
  Scenario: Another User Vote Poll
    Given the user logged in as "admin"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search polls" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsThisAutoPoll" is displayed
    And the user "admin" action vote on random options

  @BrianEditMultipleChoicePoll
  Scenario: Brain Edit Multiple Choice Poll
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search polls" and typing keys "Polls"
    When the user want to click on button label "Action Menu" and process
    And the user clicks on "Edit poll"
    Then the user see title "Edit poll" is displayed
    And the user see item of "Remove"
    And the user want to "OK"
    Then the user don't see "Remove" displayed on screen

  @BrianDeletePollMultipleChoicePoll
  Scenario: Brain Delete Multiple Choice Poll
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search polls" and typing keys "Polls"
    When the user want to click on button label "Action Menu" and process
    And the user clicks on "Delete"
    Then the user see "Are you sure you want to permanently delete this poll?" displayed success
    And the user clicks on button "buttonSubmit"
    Then the user see "No polls found" on left menu