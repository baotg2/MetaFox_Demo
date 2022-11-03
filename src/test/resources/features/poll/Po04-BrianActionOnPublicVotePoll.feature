@app_poll @poll_publicvote @brian
Feature:  Brian process on public vote polls

  Scenario: Brian See Pop Up When Remove Answers
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab "/poll/add"
    And the user want to "Remove"
    Then the user sees text "You must have a minimum of 2 answers."
    And the user want to "OK"

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
    Then the user sees text "IsThisAutoPoll"

  Scenario: Brian Search Poll
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user searches with text "Polls"
    And the user clicks on the item title
    Then the user sees text "IsThisAutoPoll"

  Scenario: Another User Vote Poll
    Given the user logged in as "admin"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user searches with text "Polls"
    And the user clicks on the item title
    Then the user sees text "IsThisAutoPoll"
    And the user "admin" action vote on random options

  Scenario: Brain Delete Public Vote Poll
    Given the user logged in as "brian"
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user searches with text "Polls"
    And the user clicks on the item title
    When the user want to click on button label "Action Menu" and process
    And  the user clicks on menu item "delete"
    Then the user sees text "Are you sure you want to permanently delete this poll?"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message