@MetaFox  @configOnACP @configOnACPBlogs
Feature: Config Settings On ACP Blogs

  @AdminConfigBlogOnACP
  Scenario: Admin Config Blog OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Blog"
    When the user want to scroll to the end of page
    And the user clicks on input field "blog.minimum_name_length" with value "5"
    And the user clicks on input field "blog.maximum_name_length" with value "255"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @BrianVerifySettingsBlogOnACP
  Scenario: Brian Verify Settings Blog On ACP
    Given the user logged in as "brian"
    When the user clicks on "More"
    And the browser opened at item "blog" and tab "/blog/add"
    And the user clicks on input field "title" with value "a"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "Title must contain at least 5 characters." displayed success

  @BrianVerifySettingsBlogCreateFeed
  Scenario: Brian Verify Settings Blog Create Feed
    Given the user logged in as "brian"
    When the user clicks on "More"
    And the browser opened at item "blog" and tab "/blog/add"
    Then the user clicks on input field "title" with value "BlogName"
    And the user adds description
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    Then the user verify title of blog is displayed