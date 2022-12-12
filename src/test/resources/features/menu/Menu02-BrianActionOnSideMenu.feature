@urlSite @Url_site @wip
Feature: Verify access side menu success

  Scenario Outline: Brain Post Status On Feed
    Given the user logged in as "brian"
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
    |AutoPostStatus3|
    |AutoPostStatus4|
    |AutoPostStatus5|
    |AutoPostStatus6|
    |AutoPostStatus7|
    |AutoPostStatus8|
    |AutoPostStatus9|
    |AutoPostStatus10|

  Scenario: Brain Reaction On Post
    Given the user logged in as "brian"
    And the browser opened at "/"
    And within the content
    And the user clicks on button "reactionButton"
    Then the user sees reaction result displayed

  Scenario: Brain can access profile from feed
    Given the user logged in as "brian"
    And the browser opened at "/"
    And within the content
    When the user access user profile
    Then the user sees page url contains "/brian"

  Scenario: Brain comment random on feed
    Given the user logged in as "brian"
    And the browser opened at "/"
    And within the content
    And the user add comment "Auto Comment"
