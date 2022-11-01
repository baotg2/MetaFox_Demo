@polls  @PollsOnFeed
Feature:  Brian process polls on feed

  @BrianAddNewPollOnFeed
  Scenario: Brian Add New Poll On Feed
    Given the user logged in as "brian"
    When the user clicks on button "buttonAttachPoll"
    And the user sees text "New poll "
    And the user clicks on input field "question" with value "Polls"
    And the user add value "Yes" on element "1"
    And the user add value "No" on element "2"
    And the user want to "Done"
    And the user want to "Share"
    Then the user sees text "added a poll "
    Then the user seesa element "IsThisAutoPoll" is displayed on detail

  @BrainSearchMultipleChoicePollOnFeed
  Scenario: Brian Search Poll Created On Feed
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user sees search field "Search polls" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    Then the user seestitle "IsThisAutoPoll" is displayed

  @BrianDeletePublicVotePollOnFeed
  Scenario: Brain Delete Public Vote Poll Created On Feed
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user sees search field "Search polls" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    When the user want to click on button label "Action Menu" and process
    And  the user clicks on menu item "delete"
    Then the user sees text "Are you sure you want to permanently delete this poll?" displayed success
    And the user clicks on button "buttonSubmit"
    #Then the user sees successful flash message