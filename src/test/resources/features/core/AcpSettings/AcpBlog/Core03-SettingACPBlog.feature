@admincp @blogSetting
Feature: Config Settings On ACP Blogs

  Scenario: Admin Config Blog OnACP
    Given the user logged in as "admin"
    And the browser opened at "/admincp/blog/setting"
    And the user want to scroll to the end of page
    And within the content
    When the user add on "inputBlogMinimumNameLength" with value "5"
    And the user add on "inputBlogMaximumNameLength" with value "255"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Brian Verify Settings Blog On ACP
    Given the user logged in as "brian1"
    And the browser opened at "/blog/add"
    And within the content
    When the user adds title with value "a"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "Title must contain at least 5 characters."

  Scenario: Admin Verify Default Category
    Given the user logged in as "admin"
    And the browser opened at "/admincp/blog/setting"
    And the user want to scroll to the end of page
    And within the content
    Then the user gets default categories from ACP

  Scenario: Admin Config Permissions Browse And View Blog
    Given the user logged in as "admin"
    And the browser opened at "/admincp/blog/permission"
    And within the content
    When the user clicks on "fieldBlogView"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Brian Verify Permissions Browse And View Blog
    Given the user logged in as "brian1"
    And the browser opened at "/blog/all"
    And within the content
    Then the user sees text "Content isn't available"

  Scenario: Admin Config Permissions Add Blogs
    Given the user logged in as "admin"
    And the browser opened at "/admincp/blog/permission"
    And within the content
    When the user actions on setting "blog.create"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin Config Permissions Edit Blog
    Given the user logged in as "admin"
    And the browser opened at "/admincp/blog/permission"
    And within the content
    When the user actions on setting "blog.update"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin Config Permissions Delete Blog
    Given the user logged in as "admin"
    And the browser opened at "/admincp/blog/permission"
    And within the content
    When the user actions on setting "blog.delete"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin Config Permissions Moderate Blog
    Given the user logged in as "admin"
    And the browser opened at "/admincp/blog/permission"
    And within the content
    When the user actions on setting "blog.delete"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message


