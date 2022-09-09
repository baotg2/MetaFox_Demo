@MetaFox  @configOnACP @configOnACPFeed
Feature: Config Settings On ACP Feed

  @AdminConfigFeedOnACP
  Scenario: Admin Config Feed OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Feed"
    And the user click on input type check box "activity.feed.enable_check_in"
    And the user click on input type check box "activity.feed.enable_tag_friends"
    And the user click on input type check box "activity.feed.enable_hide_feed"
    When the user want to scroll to the end of page
    And the user action on input field "inputActivityFeedSpamCheckStatusUpdates" with value "1"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @BrianVerifySettingsFeedOnACP
  Scenario: Brain Verify Settings Feed On ACP
    Given the user logged in as "brian"
    When the user "whatsHappening" this item
    Then the user see id button "buttonAttachLocation" is displayed
    Then the user see id button "statusTagFriendsButton" is displayed
    And the user add comment "<autoPost>" on blog
    And the user click on button "submit"
    When the user "whatsHappening" this item
    And the user add comment "<autoPost>" on blog
    And the user click on button "submit"
    Then the user see "You have already added this recently. Try adding something else." displayed success