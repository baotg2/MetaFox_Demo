@MetaFox @feed  @BrainActionShareFeed @previewSite
Feature:  Brain Action Share Feed

  @BrainShareNow
  Scenario: Brian Share Now
    Given the user logged in as "admin"
    When the user click on button "menuShareButton"
    And the user action on "Share now"

  @BrainShareToNewFeed
  Scenario: Brian Share To New Feed
    Given the user logged in as "admin"
    When the user click on button "menuShareButton"
    And the user action on "Share to News Feed"

  @BrainShareOnFriendWall
  Scenario: Brian Share On Friend Wall
    Given the user logged in as "admin"
    When the user click on button "menuShareButton"
    When the user "share_on_friends" this item

  @BrainShareOnGroup
  Scenario: Brian Share On Group
    Given the user logged in as "admin"
    When the user click on button "menuShareButton"
    And the user action on "Share on a Group"
    Then the user see "Select Group to Share" is displayed on user profile

  @BriaActionOnGlobalSearch
  Scenario: Brian Action On Global Search
    Given the user logged in as "admin"
    When the user see search field "Search" and typing keys "test"
    And the user action on "Members"
    And the user click on element link text a "test"
    Then the user see div element "whatsHappening" displayed

  @BrianSearchRandomKeywords
  Scenario: Brian Search Random Keywords
    Given the user logged in as "admin"
    When the user see search field "Search" and typing keys "#test"
    Then the user see title "#test" is displayed

  @BrianCommentStickerOnFeed
  Scenario: Brian Comments Sticker On Feed
    Given the user logged in as "admin"
    When the user click on button "commentButton"
    And the user click on button "buttonAttachSticker"
    And the user put a "sticker" sticker on comments

  @BrianCommentEmojiOnFeed
  Scenario: Brian Comments Emoji On Feed
    Given the user logged in as "admin"
    When the user click on button "commentButton"
    And the user want to click on button label "Insert an emoji" and process
    And the user put a "emoji" sticker on comments

  @BrianCopyLinkOnFeed
  Scenario: Brian Copy Link On Feed
    Given the user logged in as "admin"
    When the user click on button "menuShareButton"
    And the user action on "Copy link"
    Then the user see message "Copied to clipboard" displayed

  @BrianReplyRandomComment
  Scenario: Brian reply random comment
    Given the user logged in as "admin"
    When the user want to access "replyButton"
    Then the user see "Write a reply..." is displayed on user profile

  @BrianUploadPhotoOnFeed
  Scenario: Brian Upload Photo on feed
    Given the user logged in as "admin"
    When the user "whatsHappening" this item
    And the user want upload 1 photo