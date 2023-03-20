@app_videos @videos_public @brian @previewSite
Feature: Brian process on video friend

  Scenario: Brian Add New Videos Friend From App
    Given the user logged in as "brian1"
    And the browser opened at "/video/share"
    And within the content
    When the user uploads the video
    When the user adds title with value "IsAutoUploadVideos"
    And the user set privacy is Friends
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message

  Scenario: Another User Search Videos Is Friend
    Given the user logged in as "admin"
    When the browser opened at "/video"
    And within the sidebar
    When the user searches with text "IsAutoUploadVideos"
    And within the content
    And the user clicks on the item title
    Then within the detail videos
  @focus
  Scenario: Another User Searches Videos Is Not Friend
    Given the user logged in as "krixi1"
    When the browser opened at "/video"
    And within the sidebar
    When the user searches with text "IsAutoUploadVideos"
    And within the content
    Then the user sees text "No videos are found."