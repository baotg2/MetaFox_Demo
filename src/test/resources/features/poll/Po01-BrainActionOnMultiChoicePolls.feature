@app_poll @poll_multiplechoices @brian
Feature:  Brian process on multiple choice polls

  Scenario: Brian Add New Poll Public Vote
    Given the user logged in as "brian"
    When the browser opened at "/poll/add"
    And within the content
    And the user clicks on input field "question" with value "Polls"
    And the user add value "Yes" on element "1"
    And the user add value "No" on element "2"
    And the user adds description
    And the user attaches a photo
    When the user select type "Public votes"
    And the user select type "Allow multiple choices"
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

  Scenario: Brain Edit Multiple Choice Poll
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

  Scenario: Brain Delete Multiple Choice Poll
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user searches with text
    When the user want to click on button label "Action Menu" and process
    And  the user clicks on menu item "delete"
    Then the user sees text "Are you sure you want to permanently delete this poll?"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "No polls found "