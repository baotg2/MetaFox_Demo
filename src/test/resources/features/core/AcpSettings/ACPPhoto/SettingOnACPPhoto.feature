@MetaFox  @configOnACP @configOnACPPhotoApp
Feature: Config Settings On ACP Photo

  @AdminConfigDownloadOnPhoto
  Scenario: Admin Config Download Photo OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Photo"
    When the user want to scroll to the end of page
    When the user want to access "inputPhotoPhotoAllowDownloading"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @BrianVerifySettingDownloadPhoto
  Scenario: Brian Verify settings Downloading Photos
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user sees text "My Photos"
    And the user sees item of "Brian"
    And the user clicks on button "actionMenuButton" to action
    Then the user don't see "download-photo"

  @AdminResetConfigDownloadOnPhoto
  Scenario: Admin Reset Config Download Photo OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Photo"
    When the user want to scroll to the end of page
    When the user want to access "inputPhotoPhotoAllowDownloading"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @AdminConfigPostingMainFeed
  Scenario: Admin Config Posting Main Feed OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Photo"
    When the user want to scroll to the end of page
    When the user want to access "inputPhotoPhotoAllowPostingUserPhotoFeed"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @AdminVerifySettingPostingToMainFeed
  Scenario: Admin Verify setting Posting to main feed
    Given the user logged in as "admin"
    Then the user verify input accept "video/*" displayed on page

  @AdminResetConfigPostingToMainFeed
  Scenario: Admin Reset Config Posting Main Feed OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Photo"
    When the user want to scroll to the end of page
    When the user want to access "inputPhotoPhotoAllowPostingUserPhotoFeed"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @AdminConfigAllowPostCoverPhotoToFeed
  Scenario: Admin config allows to post cover photo to feed
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Photo"
    When the user want to scroll to the end of page
    When the user want to access "inputPhotoPhotoAllowPostingUserPhotoFeed"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @AdminVerifyTheSettingAllowPostCoverOnFeed
  Scenario: Admin Verify the setting allow post cover on feed
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user sees item of "Brian"
    And the user clicks on button "actionMenuButton" to action
    And the user "Make Cover Photo" this item
    Then the user sees successful flash message
    And the user want to access "userAvatar"