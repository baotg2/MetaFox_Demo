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

  Scenario: Admin Pin Post
    Given the user logged in as "admin"
    And the browser opened at "/"
    And within the content
    When the user opens action menu
    And the user clicks on menu item "pinHome"
    And the user accepts the confirm
    Then the user sees text "Pinned post"

  Scenario: Admin Un Pin Post
    Given the user logged in as "admin"
    And the browser opened at "/"
    And within the content
    When the user opens action menu
    And the user clicks on menu item "unpinHome"
    And the user accepts the confirm
    When the user opens action menu
    Given within the action menu
    Then the user sees text "Pin post on homepage"
