@action_feed @brian
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

  Scenario: Brian Share On Group
    Given the user logged in as "admin"
    When the user clicks on button "menuShareButton"
    And the user clicks on "Share on a Group"
    Then the user sees text "Select Group to Share "

  Scenario: Brian Search Random Keywords
    Given the user logged in as "admin"
    When the user searches with text "#test"
    Then the user sees text "#test"

  Scenario: Brian Comments Sticker On Feed
    Given the user logged in as "admin"
    When the user clicks on button "commentButton"
    And the user clicks on button "buttonAttachSticker"
    And the user put a "sticker" sticker on comments

  Scenario: Brian Comments Emoji On Feed
    Given the user logged in as "admin"
    When the user clicks on button "commentButton"
    And the user want to click on button label "Insert an emoji" and process
    And the user put a "emoji" sticker on comments

  Scenario: Brian Copy Link On Feed
    Given the user logged in as "admin"
    When the user clicks on button "menuShareButton"
    And the user clicks on "Copy link"
    Then the user sees successful flash message

  Scenario: Brian reply random comment
    Given the user logged in as "admin"
    When the user want to access "replyButton"
    Then the user sees text "Write a reply... "

  Scenario: Brian Upload Photo on feed
    Given the user logged in as "admin"
    When the user "whatsHappening" this item
    And the user want upload 1 photo