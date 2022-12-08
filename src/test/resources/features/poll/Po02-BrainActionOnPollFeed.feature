@app_poll @poll_onfeed @brian @wip
Feature:  Brian process polls on feed

  Scenario: Brian Add New Poll On Feed
    Given the user logged in as "brian"
    And the browser opened at "/"
    And within the content
    When the user clicks on button "buttonAttachPoll"
    And the user sees text "New poll "
    And the user clicks on input field "question" with value "Polls"
    And the user add value "Yes" on element "1"
    And the user add value "No" on element "2"
    And the user want to "Done"
    And the user want to "Share"
    Then the user sees text "added a poll "
    Then the user sees text "IsThisAutoPoll"

  Scenario: Brian Search Poll Created On Feed
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user searches with text "Polls"
    And the user clicks on the item title
    Then the user sees text "IsThisAutoPoll"

  Scenario: Brain Delete Public Vote Poll Created On Feed
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user searches with text "Polls"
    And the user clicks on the item title
    When the user want to click on button label "Action Menu" and process
    And  the user clicks on menu item "delete"
    Then the user sees text "Are you sure you want to permanently delete this poll?"
    And the user clicks on button "buttonSubmit"
    #Then the user sees successful flash message