@app_videos @videos_public @brian
Feature: Brian process on video app

  Scenario: Brian Attach Video From Feed
    Given the user logged in as "brian"
    And the browser opened at "/"
    And within the content
    When the user uploads the video
    And within the status composer
    And the user clicks on button "submit"
    Then the user sees successful flash message

  Scenario: Brian Add New Videos From App
    Given the user logged in as "brian"
    And the browser opened at "/video/share"
    And within the content
    When the user uploads the video
    When the user adds title with value "IsAutoUploadVideos"
    And the user types a sentence in "inputText"
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message

  Scenario: Another User Reaction On Video
    Given the user logged in as "brian"
    When the browser opened at "/video"
    And within the sidebar
    When the user searches with text "IsAutoUploadVideos"
    And within the content
    And the user clicks on the item title
    Given within the detail videos
    And the user clicks on button "reactionButton"

  Scenario: Brian Comment On Video
    Given the user logged in as "brian"
    When the browser opened at "/video"
    And within the sidebar
    When the user searches with text "IsAutoUploadVideos"
    And within the content
    And the user clicks on the item title
    Given within the detail videos
    And the user add comment "Amazing write-ups" on items
    Then the user sees text "Amazing write-ups"

  Scenario: Brian Share Videos
    Given the user logged in as "brian"
    And the browser opened at "/video"
    And within the sidebar
    When the user searches with text "IsAutoUploadVideos"
    And within the content
    And the user clicks on the item title
    Given within the detail videos
    When the user opens share menu
    And the user clicks on menu item "share_now"
    Then the user sees successful flash message

  Scenario: Brian Feature Videos
    Given the user logged in as "brian"
    And the browser opened at "/video"
    And within the sidebar
    When the user searches with text "IsAutoUploadVideos"
    And within the content
    And the user opens action menu
    When the user clicks on menu item "feature"
    Then the user sees successful flash message

  Scenario: Brian UnFeature Videos
    Given the user logged in as "brian"
    And the browser opened at "/video"
    And within the sidebar
    When the user searches with text "IsAutoUploadVideos"
    And within the content
    And the user opens action menu
    When the user clicks on menu item "unfeature"
    Then the user sees successful flash message

  Scenario: Brain Add Thumbnails
    Given the user logged in as "brian"
    And the browser opened at "/video"
    And within the sidebar
    When the user searches with text "IsAutoUploadVideos"
    And within the content
    And the user opens action menu
    When the user clicks on menu item "edit"
    And the user want upload 1 photo
    When the user submits the form
    Then the user sees successful flash message