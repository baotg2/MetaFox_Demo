@MetaFox  @sideMenu
Feature: Verify access side menu success

  @ScenarioAccessSideMenu1
  Scenario: verify access child side menu
    Given the user logged in as "brian"
    And I want to access "Blogs"
    And I want to access "Photos"
    And I want to access "Polls"
    And I want to access "Members"
    And I want to access "Quizzes"
    And I want to access "Events"

  @BrianPostStatusOnFeed
  Scenario Outline: Brain Post Status On Feed
    Given the user logged in as "brian"
    Then the user "whatsHappening" this item
    And the user add comment "<autoPost>" on blog
    And the user click on button "submit"
    Then the user see message "Post has been created successfully" displayed
    Then the user see "<autoPost>" displayed success
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

  @BrainReactionOnPost
  Scenario: Brain Reaction On Post
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user click on button "reactionButton"
    Then the user see result of "reactionResult" displayed