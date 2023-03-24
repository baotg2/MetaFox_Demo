@urlSite @Url_site @previewSite
Feature: Verify access side menu success

  Scenario Outline: Brain Post Status On Feed
    Given the user logged in as "brian1"
    And the browser opened at "/"
    And within the content
    When the user "whatsHappening" this item
    And within the status composer
    And the user add comment "<autoPost>"
    And the user clicks on button "submit"
    Then the user sees successful flash message
    Then the user sees text "<autoPost>"
  Examples:
    |autoPost|
    |AutoPostStatus1|
    |AutoPostStatus2|

  Scenario: Brain Reaction On Post
    Given the user logged in as "brian1"
    And the browser opened at "/"
    And within the content
    And the user clicks on button "reactionButton"
    Then the user sees reaction result displayed

  Scenario: Brain Can Access Profile From Feed
    Given the user logged in as "brian1"
    And the browser opened at "/"
    And within the content
    When the user access user profile
    Then the user sees page url contains "/brian"

  Scenario: Brain Comment Random On Feed
    Given the user logged in as "brian1"
    And the browser opened at "/"
    And within the content
    And the user add comment "Auto Comment"

  Scenario: Brian Add New Page
    Given the user logged in as "brian1"
    And the browser opened at "/page/add"
    Given within the content
    And the user add on "inputName" with value "IsPageAutoTest"
    And the user types a sentence in "inputText"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
  
  Scenario: Brian See Shortcuts Menu On SlotSide
    Given the user logged in as "brian1"
    And the browser opened at "/"
    Given within the sidebar
    Then the user sees text "Shortcuts"
    And the user sees text "IsPageAutoTest"

  Scenario: Brian Access Pages Detail From Shortcuts
    Given the user logged in as "brian1"
    And the browser opened at "/"
    Given within the sidebar
    When the user clicks on "itemPage"
    Then the user sees page url matches "/page/\d+"
    Given within the slot top
    Then the user sees text "IsPageAutoTest"