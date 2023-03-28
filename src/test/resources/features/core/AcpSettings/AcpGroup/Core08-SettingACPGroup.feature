@admincp @groupSetting
Feature: Config Settings On ACP Groups

  Scenario: Admin Config Groups OnACP
    Given the user logged in as "admin"
    And the browser opened at "/admincp/group/setting"
    And within the content
    When the user add on "inputGroupMinimumNameLength" with value "5"
    And the user add on "inputGroupMaximumNameLength" with value "255"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Brian Verify Settings Groups On ACP
    Given the user logged in as "brian1"
    And the browser opened at "/group/add"
    And within the content
    When the user clicks on input field "name" with value "a"
    And the user clicks on button "buttonSubmit"
    And the user want to scroll to the up of page
    Then the user sees text "Group Name must be at least 5 characters"