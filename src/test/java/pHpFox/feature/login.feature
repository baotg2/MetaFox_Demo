@pHpV5 @Login
  Feature: VerifyLogin Page success
    @ScrenarioLogin1
    Scenario: verify login success
      Given I get pHpFox address
      Then I want to login pHpFox with user "admin" at sheet "users"
      And I want verified login homepage success "admin"

    @ScrenarioLogin2
    Scenario Outline: verify errorMsg with wrong user info

      Given I get pHpFox address
      Then I want to verified error message "<errorMsg>" with user "<userName>", "<passWord>"
      Examples:
      |errorMsg | userName | passWord
      |The user credentials were incorrect.| abc@gmail.com| 123456
      |The user credentials were incorrect.| 123@gmail.com| 123rfb
      |The user credentials were incorrect.| dev@phpfox.com| bubble666
      |The user credentials were incorrect.| a@mail.com|bubble666


    @ScrenarioLogin3
    Scenario: verify logout success
      Given I get pHpFox address
      Then I want to login pHpFox with user "admin" at sheet "users"
      And I want to logout and change another user
