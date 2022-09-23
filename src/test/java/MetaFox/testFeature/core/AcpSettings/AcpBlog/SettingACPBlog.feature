@MetaFox  @configOnACP @configOnACPBlogs
Feature: Config Settings On ACP Blogs

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
    Then the user see "Title must contain at least 5 characters." displayed success

  @AdminSettingsAllowCreateFeed
  Scenario: Admin Settings Allow Create Feed
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Blog"
    When the user want to access "inputBlogBlogAllowCreateFeedWhenAddNewItem"
    And the user want to scroll to the end of page
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @BrianVerifySettingsBlogCreateFeed
  Scenario: Brian Verify Settings Blog Create Feed
    Given the user logged in as "brian"
    When the user action on "More"
    And the browser opened at item "blog" and tab "/blog/add"
    Then the user action on input field "inputTitle" with value "BlogName"
    And the user add value on div "textbox"
    And the user click on button "buttonSubmit"
    And the user see message "Blog published successfully" displayed
    Then the user verify title of blog is displayed
    When the user want to access "userAvatar"
    Then the user not see a text "TestAuto" displayed on page