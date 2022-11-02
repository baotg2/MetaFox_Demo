@admincp @commentSetting
Feature: Config Settings On ACP Comments

  Scenario: Admin Config Comment Photo OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Comment"
    When the user want to access "inputCommentEnablePhoto"
    When the user want to scroll to the end of page
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin verify settings enable photo on comments
    Given the user logged in as "admin"
    Then the user want to see tab "Attach a photo" displayed on detail

  Scenario: Admin Reset Config Comment Photo OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Comment"
    When the user want to access "inputCommentEnablePhoto"
    When the user want to scroll to the end of page
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin Config Comments Sticker OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Comment"
    When the user want to access "inputCommentEnableSticker"
    When the user want to scroll to the end of page
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin verify settings enable sticker on comments
    Given the user logged in as "admin"
    Then the user want to see tab "Post a sticker" displayed on detail

  Scenario: Admin Reset Config Comments Sticker OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Comment"
    When the user want to access "inputCommentEnableSticker"
    When the user want to scroll to the end of page
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin Config Comments Emojis OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Comment"
    When the user want to access "inputCommentEnableEmoticon"
    When the user want to scroll to the end of page
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin verify settings enable Emojis on comments
    Given the user logged in as "admin"
    Then the user want to see tab "Insert an emoji" displayed on detail

  Scenario: Admin Reset Config Comments Emojis OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Comment"
    When the user want to access "inputCommentEnableEmoticon"
    When the user want to scroll to the end of page
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message