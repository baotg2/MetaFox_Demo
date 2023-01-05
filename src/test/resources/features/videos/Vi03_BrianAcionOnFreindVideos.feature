@app_videos @videos_public @brian
Feature: Brian process on video friend

  Scenario: Brian Add New Videos Friend From App
    Given the user logged in as "brian1"
    And the browser opened at "/video/share"
    And within the content
    When the user uploads the video
    When the user adds title with value "IsAutoUploadVideos"
    And the user set privacy is Friends
    And the user types a sentence in "inputText"
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message

  Scenario: