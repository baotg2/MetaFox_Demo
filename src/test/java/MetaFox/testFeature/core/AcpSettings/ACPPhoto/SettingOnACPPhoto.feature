@MetaFox  @configOnACP @configOnACPPhotoApp
Feature: Config Settings On ACP Photo

  @AdminConfigDownloadOnPhoto
  Scenario: Admin Config Download Photo OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Photo"
    When the user want to scroll to the end of page
    When the user want to access "inputPhotoPhotoAllowDownloading"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @BrianVerifySettingDownloadPhoto
  Scenario: Brian Verify settings Downloading Photos
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user see title "My Photos" is displayed
    And the user see item of "Brian"
    And the user click on button "actionMenuButton" to action
    Then the user don't see "download-photo" is displayed

  @AdminResetConfigDownloadOnPhoto
  Scenario: Admin Reset Config Download Photo OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Photo"
    When the user want to scroll to the end of page
    When the user want to access "inputPhotoPhotoAllowDownloading"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @AdminConfigPostingMainFeed
  Scenario: Admin Config Posting Main Feed OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Photo"
    When the user want to scroll to the end of page
    When the user want to access "inputPhotoPhotoAllowCreateFeedWhenAddNewItem"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @AdminVerifySettingPostingToMainFeed
  Scenario: Admin Verify setting Posting to main feed
    Given the user logged in as "admin"
    Then the user verify input accept "video/*" displayed on page

  @AdminResetConfigPostingToMainFeed
  Scenario: Admin Reset Config Posting Main Feed OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Photo"
    When the user want to scroll to the end of page
    When the user want to access "inputPhotoPhotoAllowCreateFeedWhenAddNewItem"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @AdminConfigAllowPostCoverPhotoToFeed
  Scenario: Admin config allows to post cover photo to feed
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Photo"
    When the user want to scroll to the end of page
    When the user want to access "inputPhotoPhotoAllowPostingUserPhotoFeed"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @AdminVerifyTheSettingAllowPostCoverOnFeed
  Scenario: Admin Verify the setting allow post cover on feed
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user want to click on button label "actionMenu" and process
    And the user "make-cover" this item
    Then the user see message "Cover picture updated successfully" displayed
    And the user want to access "userAvatar"