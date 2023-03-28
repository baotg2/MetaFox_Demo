@app_poll @poll_friend @brian
Feature:  Brian process on multiple choice polls is friend

  Scenario: Brian Add New Poll Public Vote Is Friend
    Given the user logged in as "brian1"
    When the browser opened at "/poll/add"
    And within the content
    And the user clicks on input field "question" with value "Polls"
    And the user add value "Yes" on element "1"
    And the user add value "No" on element "2"
    And the user adds description
    And the user attaches a photo
    When the user select type "Public votes"
    And the user select type "Allow multiple choices"
    And the user set privacy is Friends
    And the user clicks on button "buttonSubmit"
    Then the user sees text "IsThisAutoPoll"

  Scenario: Another User Search Poll Is Friend
    Given the user logged in as "admin"
    When the browser opened at "/poll"
    And within the sidebar
    When the user searches with text "IsThisAutoPoll"
    And within the content
    And the user clicks on the item title
    Then the user sees text "IsThisAutoPoll"

  Scenario: Another User Search Poll is not friend
    Given the user logged in as "katie1"
    When the browser opened at "/poll"
    And within the sidebar
    When the user searches with text "IsThisAutoPoll"
    And within the content
    Then the user sees text "No polls found."

  Scenario: Brian Share Poll is Friend
    Given the user logged in as "brian1"
    When the browser opened at "/poll"
    And within the sidebar
    When the user searches with text "IsThisAutoPoll"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And within the content
    And the user clicks on the item title
    Given within the detail poll
    When the user opens share menu
    And the user clicks on menu item "share_now"
    Then the user sees successful flash message

  Scenario: Another user access Brian profile
    Given the user logged in as "katie1"
    When the browser opened at "/brian1"
    And within the content
    Then the user sees text "shared a post"
    Then the user sees text "The post owner has limited who can view this post"

  Scenario: Brain Delete Poll Public Vote Is Friend
    Given the user logged in as "brian1"
    When the browser opened at "/poll"
    And within the sidebar
    When the user searches with text "IsThisAutoPoll"
    And within the content
    When the user opens action menu
    And the user clicks on menu item "delete"
    Then the user accepts the confirm


