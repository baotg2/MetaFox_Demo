@admincp @photoSetting
Feature: Config Settings On ACP Photo

  Scenario: Admin Config Download Photo OnACP
    Given the user logged in as "admin"
    And the browser opened at "/admincp/photo/setting"
    And within the content
    When the user want to scroll to the end of page
    And the user turn off setting "inputPhotoPhotoAllowDownloading"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Brian Verify settings Downloading Photos
    Given the user logged in as "brian"
    And the browser opened at "/photo/all"
    And within the sidebar menu
    Then the user sees text "All Photos"
    And within the content
    When the user clicks on button "actionMenuButton"
    Then the user don't see "download-photo"

  Scenario: Admin Reset Config Download Photo OnACP
    Given the user logged in as "admin"
    And the browser opened at "/admincp/photo/setting"
    And within the content
    And the user want to scroll to the end of page
    When the user turn off setting "inputPhotoPhotoAllowDownloading"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin Config Posting Main Feed OnACP
    Given the user logged in as "admin"
    And the browser opened at "/admincp/photo/setting"
    And within the content
    When the user want to scroll to the end of page
    And the user turn off setting "inputPhotoPhotoAllowPostingUserPhotoFeed"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

#  Scenario: Admin Verify setting Posting to main feed
#    Given the user logged in as "admin"
#    Then the user verify input accept "video/*" displayed on page

  Scenario: Admin Reset Config Posting Main Feed OnACP
    Given the user logged in as "admin"
    And the browser opened at "/admincp/photo/setting"
    And within the content
    When the user want to scroll to the end of page
    When the user turn off setting "inputPhotoPhotoAllowPostingUserPhotoFeed"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin config allows to post cover photo to feed
    Given the user logged in as "admin"
    And the browser opened at "/admincp/photo/setting"
    And within the content
    When the user want to scroll to the end of page
    When the user turn off setting "inputPhotoPhotoAllowPostingUserPhotoFeed"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin Verify the setting allow post cover on feed
    Given the user logged in as "brian"
    And the browser opened at "/photo/my"
    And within the sidebar menu
    When the user clicks on button "actionMenuButton"
    And the user "Make Cover Photo" this item
    Then the user sees successful flash message