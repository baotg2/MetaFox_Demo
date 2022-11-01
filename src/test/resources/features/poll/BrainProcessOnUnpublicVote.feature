@polls  @unPublicVotePollFunction_Brian
Feature:  Brian process on multiple choice polls

  @BrianAddNewUnPublicVotePoll
  Scenario: Brian Add New Poll Public Vote
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab "/poll/add"
    And the user clicks on input field "question" with value "Polls"
    And the user add value "Yes" on element "1"
    And the user add value "No" on element "2"
    And the user adds description
    And the user attaches a photo
    When the user want to access "inputPublicVote"
    And the user select type "Allow multiple choice"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "IsThisAutoPoll"

  @BrainSearchUnPublicVotePoll
  Scenario: Brian Search Poll
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user searches with text "Polls"
    And the user want to click on title "itemTitle" and process
    Then the user sees text "IsThisAutoPoll"

  @AnotherUserVoteUnPublicVotePoll
  Scenario: Another User Vote Poll
    Given the user logged in as "admin"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user searches with text "Polls"
    And the user want to click on title "itemTitle" and process
    Then the user sees text "IsThisAutoPoll"
    And the user "admin" action vote on random options

  @BrianEditUnPublicVotePoll
  Scenario: Brain Edit Un Public Vote Polls
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user searches with text "Polls"
    When the user want to click on button label "Action Menu" and process
    And the user clicks on "Edit poll"
    Then the user sees text "Edit poll"
    And the user sees item of "Remove"
    And the user want to "OK"
    Then the user don't see "Remove" displayed on screen

  @BrianDeleteUnPublicVotePoll
  Scenario: Brain Delete Un Public Vote Polls
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user searches with text "Polls"
    When the user want to click on button label "Action Menu" and process
    And  the user clicks on menu item "delete"
    Then the user sees text "Are you sure you want to permanently delete this poll?"
    And the user clicks on button "buttonSubmit"
    #Then the user sees text "No polls found "