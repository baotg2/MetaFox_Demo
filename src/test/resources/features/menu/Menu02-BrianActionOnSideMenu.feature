@urlSite @Url_site @wip
Feature: Verify access side menu success

  Scenario: verify access child side menu
    Given the user logged in as "brian"
    And I want to access "blogs"
    And I want to access "Photos"
    And I want to access "Polls"
    And I want to access "Members"
    And I want to access "Quizzes"
    And I want to access "Events"

  Scenario Outline: Brain Post Status On Feed
    Given the user logged in as "brian"
    Then the user "whatsHappening" this item
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
#    |AutoPostStatus11|
#    |AutoPostStatus12|
#    |AutoPostStatus13|
#    |AutoPostStatus14|
#    |AutoPostStatus15|
#    |AutoPostStatus16|
#    |AutoPostStatus17|
#    |AutoPostStatus18|
#    |AutoPostStatus19|
#    |AutoPostStatus20|
#    |AutoPostStatus21|
#    |AutoPostStatus22|
#    |AutoPostStatus23|
#    |AutoPostStatus24|
#    |AutoPostStatus25|
#    |AutoPostStatus26|
#    |AutoPostStatus27|
#    |AutoPostStatus28|
#    |AutoPostStatus29|
#    |AutoPostStatus30|
#    |AutoPostStatus31|
#    |AutoPostStatus32|
#    |AutoPostStatus33|
#    |AutoPostStatus34|
#    |AutoPostStatus35|
#    |AutoPostStatus36|
#    |AutoPostStatus37|
#    |AutoPostStatus38|
#    |AutoPostStatus39|
#    |AutoPostStatus40|
#    |AutoPostStatus41|
#    |AutoPostStatus42|
#    |AutoPostStatus43|
#    |AutoPostStatus44|
#    |AutoPostStatus45|
#    |AutoPostStatus46|
#    |AutoPostStatus47|
#    |AutoPostStatus48|
#    |AutoPostStatus49|
#    |AutoPostStatus50|

  Scenario: Brain Reaction On Post
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user clicks on button "reactionButton"
    Then the user sees result of "reactionResult" displayed