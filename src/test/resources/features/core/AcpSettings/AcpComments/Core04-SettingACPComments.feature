@admincp @commentSetting
Feature: Config Settings On ACP Comments

  Scenario: Admin Config Comment Photo OnACP
    Given the user logged in as "admin"
    When the browser opened at "/admincp/comment/setting"
    And within the content
    When the user turn off setting "inputCommentEnablePhoto"
    And the user want to scroll to the end of page
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin verify settings enable photo on comments
    Given the user logged in as "admin"
    Then the user want to see tab "Attach a photo" displayed on detail

  Scenario: Admin Reset Config Comment Photo OnACP
    Given the user logged in as "admin"
    When the browser opened at "/admincp/comment/setting"
    And within the content
    When the user turn off setting "inputCommentEnablePhoto"
    And the user want to scroll to the end of page
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin Config Comments Sticker OnACP
    Given the user logged in as "admin"
    When the browser opened at "/admincp/comment/setting"
    And within the content
    When the user turn off setting "inputCommentEnableSticker"
    And the user want to scroll to the end of page
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin verify settings enable sticker on comments
    Given the user logged in as "admin"
    Then the user want to see tab "Post a sticker" displayed on detail

  Scenario: Admin Reset Config Comments Sticker OnACP
    Given the user logged in as "admin"
    When the browser opened at "/admincp/comment/setting"
    And within the content
    When the user turn off setting "inputCommentEnableSticker"
    And the user want to scroll to the end of page
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin Config Comments Emojis OnACP
    Given the user logged in as "admin"
    When the browser opened at "/admincp/comment/setting"
    And within the content
    When the user turn off setting "inputCommentEnableEmoticon"
    And the user want to scroll to the end of page
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin verify settings enable Emojis on comments
    Given the user logged in as "admin"
    Then the user want to see tab "Insert an emoji" displayed on detail

  Scenario: Admin Reset Config Comments Emojis OnACP
    Given the user logged in as "admin"
    When the browser opened at "/admincp/comment/setting"
    And within the content
    When the user turn off setting "inputCommentEnableEmoticon"
    And the user want to scroll to the end of page
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message