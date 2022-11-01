@MetaFox @Author @Login @previewSite
Feature: Verify login pHpFox success

  @ScenarioLogin1
  Scenario: Verify login success with all users
    Given the user logged in as "admin"
    And the browser opened at "/"
    And I want to click on "Logout"
    And the user logged in as "brian"
    And I want to click on "Logout"
    And the user logged in as "terry"
    And I want to click on "Logout"
    And the user logged in as "luna"
    And I want to click on "Logout"
    And the user logged in as "katie"
    And I want to click on "Logout"

  @ScenarioLogin2
  Scenario Outline: verify errorMsg with wrong user info
    Given I want to verified error message with user "<userName>", "<passWord>"
    Then the user see error message "The user credentials were incorrect." is displayed
    Examples:
    |userName |passWord
    |abc@gmail.com|123456
    |123@gmail.com|123rfb
    |dev@phpfox.com|bubble666vds
    |a@mail.com|bubble666

  @BrainAddFriendWithAdmin
  Scenario: Brain Add Friend
    Given the user logged in as "brian"
    And the browser opened at "/"
    Then the user see search field "Search" and typing keys "admin"
    And the user want to click on "/admin"
    And the user want to "Add Friend"
    Then I want to click on "Logout"
    And the user logged in as "admin"
    Then the user see search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    And the user want to "Confirm"
    Then the user see button "Unfriend" is displayed

  @BrainAddFriendWithTest
  Scenario: Brain Add Friend
    Given the user logged in as "brian"
    And the browser opened at "/"
    Then the user see search field "Search" and typing keys "test"
    And the user clicks on element link text a "test"
    And the user want to "Add Friend"
    Then I want to click on "Logout"
    And the user logged in as "test"
    Then the user see search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    And the user want to "Confirm"
    Then the user see button "Unfriend" is displayed