@admincp @blogSetting
Feature: Config Settings On ACP Blogs

  Scenario: Admin Config Blog OnACP
    Given the user logged in as "admin"
    And the browser opened at "/admincp/blog/setting"
    And the user want to scroll to the end of page
    And within the content
    When the user clicks on input field "blog.minimum_name_length" with value "5"
    And the user clicks on input field "blog.maximum_name_length" with value "255"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Brian Verify Settings Blog On ACP
    Given the user logged in as "brian1"
    And the browser opened at "/blog/add"
    And within the content
    When the user adds title with value "a"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "Title must contain at least 5 characters."