@page_login @previewSite @focus
Feature: Verify login pHpFox success

#  Scenario Outline: verify errorMsg with wrong user info
#    Given I want to verified error message with user "<userName>", "<passWord>"
#    Then the user sees error message "The user credentials were incorrect."
#    Examples:
#    |userName |passWord
#    |abc@gmail.com|123456
#    |123@gmail.com|123rfb
#    |dev@phpfox.com|bubble666vds
#    |a@mail.com|bubble666

  Scenario: Brain Add Friend With Admin
    Given the user logged in as "brian"
    And the browser opened at "/admin"
    When within the slot top
    And the user "Add Friend"
    Given switch account "admin"
    #next logged user accpect request
    And the browser opened at "/brian"
    When the user want to "Confirm"
    Then the user sees items "Unfriend" matches on site

  Scenario: Brian Add Friend With Test
    Given the user logged in as "brian"
    And the browser opened at "/terry"
    When within the slot top
    And the user "Add Friend"
    Given switch account "terry"
    #next logged user accpect request
    And the browser opened at "/brian"
    When the user want to "Confirm"
    Then the user sees items "Unfriend" matches on site