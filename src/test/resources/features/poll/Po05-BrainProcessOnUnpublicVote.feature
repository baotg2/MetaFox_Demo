@app_poll @unPublicVotePollFunction @brian
Feature:  Brian process on multiple choice polls

  Scenario: Brian Add New Poll Public Vote
    Given the user logged in as "brian1"
    When the browser opened at "/poll/add"
    And within the content
    And the user clicks on input field "question" with value "Polls"
    And the user add value "Yes" on element "1"
    And the user add value "No" on element "2"
    And the user adds description
    And the user attaches a photo
    When the user turn off setting "inputPublicVote"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "IsThisAutoPoll"

  Scenario: Brian Search Poll
    Given the user logged in as "brian1"
    When the browser opened at "/poll"
    And within the sidebar
    When the user searches with text "IsThisAutoPoll"
    And within the content
    And the user clicks on the item title
    Then the user sees text "IsThisAutoPoll"

  Scenario: Another User Vote Poll
    Given the user logged in as "admin"
    When the browser opened at "/poll"
    And within the sidebar
    When the user searches with text "IsThisAutoPoll"
    And within the content
    And the user clicks on the item title
    Then the user sees text "IsThisAutoPoll"
    Given within the detail poll
    And the user "admin" action vote on random options

  Scenario: Brain Delete Un Public Vote Polls
    Given the user logged in as "brian1"
    When the browser opened at "/poll"
    And within the sidebar
    When the user searches with text "IsThisAutoPoll"
    And within the content
    When the user opens action menu
    And the user clicks on menu item "delete"
    Then the user accepts the confirm