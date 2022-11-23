@app_forum @brian
Feature:  Brian process on Forum

  Scenario: Brian Add New Forum With Empty Value
    Given the user logged in as "brian"
    And the browser opened at "/forum/thread/add"
    And within the content
    When the user clicks on button "buttonSubmit"
    Then the user sees text "Title is required."
    And the user sees text "Content is required. "

  Scenario: Brian Add New Forum
    Given the user logged in as "brian"
    When the browser opened at "/forum/thread/add"
    And within the content
    And the user add value on id "select-forum_id" is "General"
    When the user want to select category at 1 on dropdown list "select-forum_id"
    And the user adds title with value "IsThreadAutotest"
    And the user adds description
    And the user attaches a photo
    And the user adds a tag
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And the user sees text "IsThreadAutotest"

  Scenario: Brian verified subscribed threads
    Given the user logged in as "brian"
    When the browser opened at "/forum/subscribed-thread"
    And within the content
    Then the user sees text "IsThreadAutotest"

  Scenario: Another User Reply Thread
    Given the user logged in as "terry"
    When the browser opened at "/forum"
    And within the sidebar
    And the user searches with text "IsThreadAutotest"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Given within the content
    And the user clicks on the item title
    Then the user sees text "IsThreadAutotest"
    And the user adds description
    And the user attaches a photo
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Brain Reaction On Thread
    Given the user logged in as "brian"
    When the browser opened at "/forum"
    And within the sidebar
    When the user searches with text "IsThreadAutotest"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And within the content
    And the user clicks on the item title
    Then the user sees text "IsThreadAutotest"
    And the user clicks on button "reactionButton"

  Scenario: Brain Edit Thread
    Given the user logged in as "brian"
    When the browser opened at "/forum"
    And within the sidebar
    And the user searches with text "IsThreadAutotest"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Given within the content
    And the user clicks on the item title
    When the user opens action menu
    And the user clicks on menu item "edit"
    Then the user sees items "Remove" on screen

  Scenario: Brain move thread to another forum
    Given the user logged in as "brian"
    When the browser opened at "/forum"
    And within the sidebar
    And the user searches with text "IsThreadAutotest"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Given within the content
    When the user opens action menu
    And the user clicks on menu item "move"
    When the user want to select category at 4 on dropdown list "select-forum_id"
    Given within the form
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    Given within the content
    And the user sees text "IsThreadAutotest"

  Scenario: Brain copy thread with default title
    Given the user logged in as "brian"
    When the browser opened at "/forum"
    And within the sidebar
    And the user searches with text "IsThreadAutotest"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Given within the content
    When the user opens action menu
    And the user clicks on menu item "copy"
    #When the user clicks on input field "inputTitle" with value ""
    And the user want to "Copy"
    Then the user sees successful flash message
    When the user "new_notification" this item

  Scenario: Admin Stick Thread
    Given the user logged in as "admin"
    When the browser opened at "/forum"
    Given within the content
    When the user opens action menu
    And the user clicks on menu item "stick"
    Then the user sees successful flash message
    When the user opens action menu
    And the user clicks on menu item "unstick"
    Then the user sees successful flash message

  Scenario: Brian verify on history
    Given the user logged in as "brian"
    When the browser opened at "/forum/history-thread"
    And within the content
    Then the user sees text "IsThreadAutotest"

  Scenario: Brian closed thread
    Given the user logged in as "brian"
    When the browser opened at "/forum"
    And within the sidebar
    And the user searches with text "IsThreadAutotest"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Given within the content
    When the user opens action menu
    And the user clicks on menu item "close"
    And the user accepts the confirm
    When the user opens action menu
    And the user clicks on menu item "reopen"
    Then the user sees successful flash message