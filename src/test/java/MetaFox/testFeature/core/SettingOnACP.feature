@MetaFox  @configOnACP
Feature: Config Settings On ACP

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

  @AdminConfigBlogOnACP
  Scenario: Admin Config Blog OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Blog"
    When the user want to scroll to the end of page
    And the user action on input field "inputBlogMinimumNameLength" with value "5"
    And the user action on input field "inputBlogMaximumNameLength" with value "255"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @BrianVerifySettingsBlogOnACP
  Scenario: Brian Verify Settings Blog On ACP
    Given the user logged in as "brian"
    When the user action on "More"
    And the browser opened at item "blog" and tab "/blog/add"
    Then the user see "Maximum 255 of characters" displayed success
    And the user action on input field "inputTitle" with value "a"
    And the user click on button "buttonSubmit"
    Then the user see "Title must be at least 5 characters" displayed success

  @AdminConfigRegistrationOnACP
  Scenario: Admin Config Register On ACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "Members"
    And the user action on "Permissions"
    When the user click on element link text a "Registration Settings"
    And the user want to access "inputUserAllowUserRegistration"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @BrainVerifyFromSignUp
  Scenario: Brain Verify From Sign Up
    Then the user see link text element "buttonRegister" is not displayed on screen
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "Members"
    And the user action on "Permissions"
    When the user click on element link text a "Registration Settings"
    And the user want to access "inputUserAllowUserRegistration"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @AdminConfigRe-enterPassword
  Scenario: Admin Config Re-enter Password
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "Members"
    And the user action on "Permissions"
    When the user click on element link text a "Registration Settings"
    And the user click on input type check box "user.signup_repeat_password"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @BrainVerifyRe-enterPassword
  Scenario: Verify the re-enter password is displayed
    Given the user want to click on "register"
    Then the user action on input field "inputPasswordConfirmation" with value "abc"

  @AdminConfigTermsPrivacyConfirmation
  Scenario: Admin Config Terms Privacy On ACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "Members"
    And the user action on "Permissions"
    When the user click on element link text a "Registration Settings"
    When the user want to scroll to the end of page
    And the user want to access "inputUserNewUserTermsConfirmation"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @BrainVerifyTermConfirmation
  Scenario: Verify the TermConfirmation is displayed
    Given the user want to click on "register"
    Then the user don't see "fieldAgree" is displayed
    And the user back to "buttonUndefined" page
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "Members"
    And the user action on "Permissions"
    When the user click on element link text a "Registration Settings"
    When the user want to scroll to the end of page
    And the user want to access "inputUserNewUserTermsConfirmation"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed