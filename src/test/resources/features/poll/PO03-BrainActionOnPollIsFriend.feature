@app_poll @poll_friend @brian
Feature:  Brian process on multiple choice polls is friend

  Scenario: Brian Add New Poll Public Vote Is Friend
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab "/poll/add"
    And the user clicks on input field "question" with value "Polls"
    And the user add value "Yes" on element "1"
    And the user add value "No" on element "2"
    And the user adds description
    And the user attaches a photo
    When the user select type "Public votes"
    And the user select type "Allow multiple choice"
    And the user sees item of "Everyone"
    When the user sees item of "Friends"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "IsThisAutoPoll"

  Scenario: Another User Search Poll Is Friend
    Given the user logged in as "test"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user searches with text "Polls"
    And the user clicks on the item title
    Then the user sees text "IsThisAutoPoll"

  Scenario: Another User Search Poll is not friend
    Given the user logged in as "terry"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user searches with text "Polls"
    Then the user sees text "No polls found. "

  Scenario: Brian Share Poll is Friend
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user searches with text "Polls"
    And the user clicks on the item title
    And the user clicks on button "menuShareButton"
    When the user clicks on "Share now"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user sees text "shared a post to newsfeed "
    Then the user sees text "IsThisAutoPoll"

  Scenario: Another user access Brian profile
    Given the user logged in as "terry"
    Then the user searches with text "brian"
    And the user clicks on link "/brian"
    Then the user sees text "shared a post to newsfeed "
    Then the user sees text "The post owner has limited who can view this post"

  Scenario: Brain Delete Polls Is Friend Just Added
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user searches with text "Polls"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    When the user want to click on button label "Action Menu" and process
    And  the user clicks on menu item "delete"
    Then the user sees text "Are you sure you want to permanently delete this poll?"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message


