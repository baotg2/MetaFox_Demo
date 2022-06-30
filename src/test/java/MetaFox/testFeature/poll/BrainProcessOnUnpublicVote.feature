@MetaFox @polls  @unPublicVotePollFunction_Brian
Feature:  Brian process on multiple choice polls

  @BrianAddNewUnPublicVotePoll
  Scenario: Brian Add New Poll Public Vote
    Given the user logged in as "brian"
    When the browser opened at item "poll" and tab "/poll/add"
    And the user action on input field "inputQuestion" with value "Polls"
    And the user add value on id "mui-3" is "Yes"
    And the user add value on id "mui-4" is "No"
    And the user add value on div "textbox"
    And the user want to add attach files
    When the user want to access "inputPublicVote"
    And the user select type "Allow multiple choice"
    And the user click on button "buttonSubmit"
    Then the user see title "IsThisAutoPoll" is displayed

  @AnotherUserVoteUnPublicVotePoll
  Scenario: Another User Vote Poll
    Given the user logged in as "admin"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search poll" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsThisAutoPoll" is displayed
    And the user "admin" action vote on random options