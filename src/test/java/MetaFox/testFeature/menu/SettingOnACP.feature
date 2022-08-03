@MetaFox  @configOnACP
Feature: Config Settings On ACP

  @AdminConfigFeedOnACP
  Scenario: Admin Config Feed OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Feed"
    Then the user see title "Activity Settings" is displayed
    And the user click on input type check box "feed.enable_check_in"
    And the user click on input type check box "feed.enable_tag_friends"
    And the user click on input type check box "feed.enable_hide_feed"
    And the user action on input field "inputFeedSpamCheckStatusUpdates" with value "1"
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
    Then the user see message "Shared successfully" displayed
    When the user "whatsHappening" this item
    And the user add comment "<autoPost>" on blog
    And the user click on button "submit"
    Then the user see "You have already added this recently. Try adding something else." displayed success

  @AdminConfigBlogOnACP
  Scenario: Admin Config Blog OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Blog"
    Then the user see title "Site Settings" is displayed
    And the user action on input field "inputMinimumNameLength" with value "5"
    And the user action on input field "inputMaximumNameLength" with value "255"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @BrianVerifySettingsBlogOnACP
  Scenario: Brian Verify Settings Blog On ACP
    Given the user logged in as "brian"
    When the browser opened at item "blog" and tab "/blog/add"
    Then the user see "Maximum 255 of characters" displayed success
    And the user action on input field "inputTitle" with value "a"
    And the user click on button "buttonSubmit"
    Then the user see "Title must be at least 5 characters" displayed success