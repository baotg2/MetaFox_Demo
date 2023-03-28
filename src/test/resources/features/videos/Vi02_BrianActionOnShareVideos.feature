@app_videos @videos_share @brian @previewSite
Feature: Brian process on share videos

  Scenario: Brian Share With Link Videos
    Given the user logged in as "brian1"
    And the browser opened at "/video/share"
    And within the content
    And the user moves to tab "Share"
    When the user fills URL Videos
    And the user uploads new media files
    Then the user sees successful flash message

  Scenario: Another User Reaction On Video Shared
    Given the user logged in as "brian1"
    When the browser opened at "/video"
    And within the sidebar
    When the user searches with text "Cascada"
    And within the content
    And the user clicks on the item title
    Given within the detail videos
    And the user clicks on button "reactionButton"

  Scenario: Brian Comment On Video Shared
    Given the user logged in as "brian1"
    When the browser opened at "/video"
    And within the sidebar
    When the user searches with text "Cascada"
    And within the content
    And the user clicks on the item title
    Given within the detail videos
    And the user add comment "Amazing write-ups" on items
    Then the user sees text "Amazing write-ups"