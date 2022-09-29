@MetaFox @polls  @PollsOnFeed
Feature:  Brian process polls on feed

  @BrianAddNewPollOnFeed
  Scenario: Brian Add New Poll On Feed
    Given the user logged in as "brian"
    When the user click on button "buttonAttachPoll"
    And the user see "New poll" is displayed on user profile
    And the user action on input field "inputPollQuestion" with value "Polls"
    And the user add value "Yes" on element "1"
    And the user add value "No" on element "2"
    And the user want to "Done"
    And the user want to "Share"
    Then the user see "added a poll" on left menu
    Then the user see a element "IsThisAutoPoll" is displayed on detail

  @BrainSearchMultipleChoicePollOnFeed
  Scenario: Brian Search Poll Created On Feed
    Given the user logged in as "brian"
    When the user action on "More"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search polls" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsThisAutoPoll" is displayed

  @BrianDeletePublicVotePollOnFeed
  Scenario: Brain Delete Public Vote Poll Created On Feed
    Given the user logged in as "brian"
    When the user action on "More"
    When the browser opened at item "poll" and tab ""
    And the user see search field "Search polls" and typing keys "Polls"
    And the user want to click on title "itemTitle" and process
    When the user want to click on button label "actionMenu" and process
    And the user click on div "delete" and process
    Then the user see "Are you sure you want to permanently delete this poll?" displayed success
    And the user click on button "buttonSubmit"
    #Then the user see message "No polls found" displayed