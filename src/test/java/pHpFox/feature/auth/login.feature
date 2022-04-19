@pHpV5 @Login
  Feature: Verify login pHpFox success
    @ScrenarioLogin1
    Scenario: Verify login success with all users
      Given the user logged in as "admin"
      And I want to logout and change another user
      And the user logged in as "brian"
      And I want to logout and change another user
      And the user logged in as "terry"
      And I want to logout and change another user
      And the user logged in as "luna"
      And I want to logout and change another user
      And the user logged in as "katie"
      And I want to logout and change another user



    @ScrenarioLogin2
    Scenario Outline: verify errorMsg with wrong user info
      Given I want to verified error message "<errorMsg>" with user "<userName>", "<passWord>"
      Examples:
      |errorMsg | userName | passWord
      |The user credentials were incorrect.| abc@gmail.com| 123456
      |The user credentials were incorrect.| 123@gmail.com| 123rfb
      |The user credentials were incorrect.| dev@phpfox.com| bubble666
      |The user credentials were incorrect.| a@mail.com|bubble666
