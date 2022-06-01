@MetaFox @Author  @Login
Feature: Verify login pHpFox success
  @ScenarioLogin1
  Scenario: Verify login success with all users
    Given the user logged in as "admin"
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