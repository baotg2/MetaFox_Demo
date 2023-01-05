@admincp @forumSetting
Feature: Config Settings On ACP Forums

  Scenario: Admin Config Forums OnACP
    Given the user logged in as "admin"
    When the browser opened at "/admincp/forum/setting"
    And the user want to scroll to the end of page
    And within the content
    When the user want to scroll to the end of page
    And the user clicks on input field "forum.minimum_name_length" with value "5"
    And the user clicks on input field "forum.maximum_name_length" with value "255"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Brian Verify Settings Forums On ACP
    Given the user logged in as "brian1"
    And the browser opened at "/forum/thread/add"
    And within the content
    When the user add value on id "select-forum_id" is "General"
    And the user adds title with value "a"
    And the user clicks on button "buttonSubmit"
    When the user want to scroll to the up of page
    Then the user sees text "Title must contain at least 5 characters."