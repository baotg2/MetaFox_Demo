@MetaFox  @configOnACP @configOnACPComments
Feature: Config Settings On Comments

  @AdminConfigOnCommentsPhoto
  Scenario: Admin Config Blog OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Comment"
    When the user want to access "inputCommentEnablePhoto"
    When the user want to scroll to the end of page
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @AdminVerifySettingsEnablePhotoOnComments
  Scenario: Admin verify settings enable photo on comments
    Given the user logged in as "admin"
    Then the user want to see tab "Attach a photo" displayed on detail

  @AdminResetConfigOnCommentsPhoto
  Scenario: Admin Reset Config Blog OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Comment"
    When the user want to access "inputCommentEnablePhoto"
    When the user want to scroll to the end of page
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @AdminConfigOnCommentsSticker
  Scenario: Admin Config Comments Photo OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Comment"
    When the user want to access "inputCommentEnableSticker"
    When the user want to scroll to the end of page
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @AdminVerifySettingsEnableStickerOnComments
  Scenario: Admin verify settings enable sticker on comments
    Given the user logged in as "admin"
    Then the user want to see tab "Post a sticker" displayed on detail

  @AdminResetConfigOnCommentsSticker
  Scenario: Admin Reset Config Comments Sticker OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Comment"
    When the user want to access "inputCommentEnableSticker"
    When the user want to scroll to the end of page
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed