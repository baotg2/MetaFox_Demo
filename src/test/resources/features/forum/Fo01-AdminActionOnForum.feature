@app_forum @admin
Feature:  Admin process on Forum app

  Scenario: Admin Create New Thread
    Given the user logged in as "admin"
    And the browser opened at "/forum/thread/add"
    And within the content
    And the user add value on id "select-forum_id" is "General"
    When the user want to select category at 1 on dropdown list "select-forum_id"
    And the user adds title with value "IsThreadDisplayedOnWiki"
    And the user adds description
    And the user attaches a photo
    And the user adds a tag
    And the user clicks on "inputIsWiki"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin Verify WikiTab
    Given the user logged in as "admin"
    And the browser opened at "/forum/wiki-thread"
    Then the user sees text "IsThreadDisplayedOnWiki"

  Scenario: Another User Verify WikiTab
    Given the user logged in as "brian"
    And the browser opened at "/forum/wiki-thread"
    Then the user sees text "IsThreadDisplayedOnWiki"