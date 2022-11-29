@action_feed @brian @previewSite
Feature: Brain Action Share Feed

  Scenario: Brian Share Now
    Given the user logged in as "admin"
    And the browser opened at "/"
    And within the content
    When the user opens share menu
    And the user clicks on menu item "share_now"
    Then the user sees successful flash message

  Scenario: Brian Share To New Feed
    Given the user logged in as "admin"
    And the browser opened at "/"
    And within the content
    When the user opens share menu
    And the user clicks on menu item "share_to_newsfeed"
    Given within the status composer
    And the user clicks on button "submit"
    Then the user sees successful flash message

  Scenario: Brian Share On Friend Wall
    Given the user logged in as "admin"
    And the browser opened at "/"
    And within the content
    When the user opens share menu
    And the user clicks on menu item "share_on_friends"
    Given within the friend picker
    And the user selects friends on friend list
    Given within the status composer
    And the user clicks on button "submit"
    Then the user sees successful flash message

  Scenario: Brian Search Random Keywords
    Given the user logged in as "admin"
    And the browser opened at "/"
    And within the header
    When the user searches with text "#test"
    Given within the sidebar
    Then the user sees text "#test"

  Scenario: Brian Comments Sticker On Feed
    Given the user logged in as "admin"
    And the browser opened at "/"
    And within the content
    When the user clicks on button "commentButton"
    And the user clicks on button "buttonAttachSticker"
    And the user put a "sticker" sticker on comments

  Scenario: Brian Comments Emoji On Feed
    Given the user logged in as "admin"
    And the browser opened at "/"
    And within the content
    When the user clicks on button "commentButton"
    And the user want to click on button label "Insert an emoji" and process
    And the user put a "emoji" sticker on comments

  Scenario: Brian Copy Link On Feed
    Given the user logged in as "admin"
    And the browser opened at "/"
    And within the content
    When the user opens share menu
    And the user clicks on menu item "copy_link"
    Then the user sees successful flash message