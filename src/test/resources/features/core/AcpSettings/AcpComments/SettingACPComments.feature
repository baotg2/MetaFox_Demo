@MetaFox  @configOnACP @configOnACPComments
Feature: Config Settings On ACP Comments

  @AdminConfigOnCommentsPhoto
  Scenario: Admin Config Comment Photo OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Comment"
    When the user want to access "inputCommentEnablePhoto"
    When the user want to scroll to the end of page
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @AdminVerifySettingsEnablePhotoOnComments
  Scenario: Admin verify settings enable photo on comments
    Given the user logged in as "admin"
    Then the user want to see tab "Attach a photo" displayed on detail

  @AdminResetConfigOnCommentsPhoto
  Scenario: Admin Reset Config Comment Photo OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Comment"
    When the user want to access "inputCommentEnablePhoto"
    When the user want to scroll to the end of page
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @AdminConfigOnCommentsSticker
  Scenario: Admin Config Comments Sticker OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Comment"
    When the user want to access "inputCommentEnableSticker"
    When the user want to scroll to the end of page
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @AdminVerifySettingsEnableStickerOnComments
  Scenario: Admin verify settings enable sticker on comments
    Given the user logged in as "admin"
    Then the user want to see tab "Post a sticker" displayed on detail

  @AdminResetConfigOnCommentsSticker
  Scenario: Admin Reset Config Comments Sticker OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Comment"
    When the user want to access "inputCommentEnableSticker"
    When the user want to scroll to the end of page
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @AdminConfigOnCommentsEmojis
  Scenario: Admin Config Comments Emojis OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Comment"
    When the user want to access "inputCommentEnableEmoticon"
    When the user want to scroll to the end of page
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @AdminVerifySettingsEnableEmojisOnComments
  Scenario: Admin verify settings enable Emojis on comments
    Given the user logged in as "admin"
    Then the user want to see tab "Insert an emoji" displayed on detail

  @AdminResetConfigOnCommentsSticker
  Scenario: Admin Reset Config Comments Emojis OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Comment"
    When the user want to access "inputCommentEnableEmoticon"
    When the user want to scroll to the end of page
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message