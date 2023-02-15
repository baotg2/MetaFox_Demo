@admincp @feedSetting
Feature: Config Settings On ACP Feed

  Scenario: Admin Config Feed OnACP
    Given the user logged in as "admin"
    When the browser opened at "/admincp/activity/setting"
    And the user want to scroll to the end of page
    And within the content
    When the user clicks on input type check box "activity.feed.enable_check_in"
    And the user clicks on input type check box "activity.feed.enable_tag_friends"
    And the user clicks on input type check box "activity.feed.enable_hide_feed"
    And the user want to scroll to the end of page
    When the user clicks on input field "activity.feed.spam_check_status_updates" with value "1"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Brain Verify Settings Feed On ACP
    Given the user logged in as "brian1"
    And the browser opened at "/"
    Given within the status
    And the user opens status composer
    And within the status composer
    And the user add comment "<autoPost>" on items
    And the user clicks on button "submit"

  Scenario: Brian Add Another Status On Feed
    Given the user logged in as "brian1"
    And the browser opened at "/"
    Given within the status
    And the user opens status composer
    And within the status composer
    And the user add comment "<autoPost>" on items
    And the user clicks on button "submit"
    Then the user sees text "You have already added this recently. Try adding something else." on popup