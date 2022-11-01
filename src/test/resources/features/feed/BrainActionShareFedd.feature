@MetaFox @feed  @BrainActionShareFeed @previewSite
Feature:  Brain Action Share Feed

  @BrainShareNow
  Scenario: Brian Share Now
    Given the user logged in as "admin"
    When the user clicks on button "menuShareButton"
    And the user clicks on "Share now"

  @BrainShareToNewFeed
  Scenario: Brian Share To New Feed
    Given the user logged in as "admin"
    When the user clicks on button "menuShareButton"
    And the user clicks on "Share to News Feed"

  @BrainShareOnFriendWall
  Scenario: Brian Share On Friend Wall
    Given the user logged in as "admin"
    When the user clicks on button "menuShareButton"
    When the user "share_on_friends" this item

  @BrainShareOnGroup
  Scenario: Brian Share On Group
    Given the user logged in as "admin"
    When the user clicks on button "menuShareButton"
    And the user clicks on "Share on a Group"
    Then the user sees text "Select Group to Share "

  @BriaActionOnGlobalSearch
  Scenario: Brian Action On Global Search
    Given the user logged in as "admin"
    When the user searches with text "test"
    And the user clicks on "Members"
    And the user clicks on element link text a "test"
    Then the user sees div element "whatsHappening" displayed

  @BrianSearchRandomKeywords
  Scenario: Brian Search Random Keywords
    Given the user logged in as "admin"
    When the user searches with text "#test"
    Then the user sees text "#test"

  @BrianCommentStickerOnFeed
  Scenario: Brian Comments Sticker On Feed
    Given the user logged in as "admin"
    When the user clicks on button "commentButton"
    And the user clicks on button "buttonAttachSticker"
    And the user put a "sticker" sticker on comments

  @BrianCommentEmojiOnFeed
  Scenario: Brian Comments Emoji On Feed
    Given the user logged in as "admin"
    When the user clicks on button "commentButton"
    And the user want to click on button label "Insert an emoji" and process
    And the user put a "emoji" sticker on comments

  @BrianCopyLinkOnFeed
  Scenario: Brian Copy Link On Feed
    Given the user logged in as "admin"
    When the user clicks on button "menuShareButton"
    And the user clicks on "Copy link"
    Then the user sees successful flash message

  @BrianReplyRandomComment
  Scenario: Brian reply random comment
    Given the user logged in as "admin"
    When the user want to access "replyButton"
    Then the user sees text "Write a reply... "

  @BrianUploadPhotoOnFeed
  Scenario: Brian Upload Photo on feed
    Given the user logged in as "admin"
    When the user "whatsHappening" this item
    And the user want upload 1 photo