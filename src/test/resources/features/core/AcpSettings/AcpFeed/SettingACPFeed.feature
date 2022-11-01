@MetaFox  @configOnACP @configOnACPFeed
Feature: Config Settings On ACP Feed

  @AdminConfigFeedOnACP
  Scenario: Admin Config Feed OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Feed"
    And the user clicks on input type check box "activity.feed.enable_check_in"
    And the user clicks on input type check box "activity.feed.enable_tag_friends"
    And the user clicks on input type check box "activity.feed.enable_hide_feed"
    When the user want to scroll to the end of page
    And the user clicks on input field "activity.feed.spam_check_status_updates" with value "1"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @BrianVerifySettingsFeedOnACP
  Scenario: Brain Verify Settings Feed On ACP
    Given the user logged in as "brian"
    When the user "whatsHappening" this item
    Then the user sees id button "buttonAttachLocation"
    Then the user sees id button "statusTagFriendsButton"
    And the user add comment "<autoPost>"
    And the user clicks on button "submit"
    When the user "whatsHappening" this item
    And the user add comment "<autoPost>"
    And the user clicks on button "submit"
    Then the user sees text "You have already added this recently. Try adding something else."