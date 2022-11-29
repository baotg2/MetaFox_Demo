@app_group @group_close @brian
Feature:  Brain Process On Closed Groups

  Scenario: 01_Brian Add New Group
    Given the user logged in as "brian"
    And the browser opened at "/group/add"
    And within the content
    Given the user add on "inputName" with value "TestAutoClosedGroup"
    And the user types a sentence in "inputText"
    And the user add value on "select-reg_method" is "Closed"
    And the user clicks on button "buttonSubmit"
    Given within the slot top
    Then the user sees text "TestAutoClosedGroup"

  Scenario: 02_Another User Search Group
    Given the user logged in as "admin"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "TestAutoClosedGroup"
    Given within the content
    And the user clicks on the item title
    Then the user sees text "TestAutoClosedGroup"

  Scenario: 03_Another users request join group
    Given the user logged in as "terry"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "TestAutoClosedGroup"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user "Join Group"
    Then the user sees button "Pending Request" on screen

  Scenario: 04_Brian approve pending request
    Given the user logged in as "brian"
    And the browser opened at "/"
    And within the header
    When the user "new_notification" this item
    Then the user clicks on notification "requested to join TestAutoClosedGroup" and process
    Given within the content
    When Admin approves the request
    Then the user sees successful flash message
    Given switch account "terry"
    Then the user "new_notification" this item
    And the user clicks on notification "An admin has approved your request to join the group." and process
    Then the user sees button "Joined" on screen

  Scenario: Brian Delete Closed Group
    Given the user logged in as "brian"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "TestAutoClosedGroup"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And  the user clicks on menu item "delete"
    And the user accepts the confirm
    Then the user sees successful flash message
