@pHpV5 @Login
  Feature: VerifyLogin Page success
    @ScrenarioLogin1
    Scenario: verify login success
      Given I want to open pHp by Firefox
      Then I want to login pHpFox with user "admin" at sheet "users"
      And I want verified login homepage success "admin"

    @ScrenarioLogin2
    Scenario Outline: verify errorMsg with wrong user info
      Given I want to open pHp by Firefox
      Then I want to verified error message "<errorMsg>" with user "<userName>", "<passWord>"
      Examples:
      |errorMsg | userName | passWord
      |The user credentials were incorrect.| abc@gmail.com| 123456
      |The user credentials were incorrect.| 123@gmail.com| 123rfb
      |The user credentials were incorrect.| dev@phpfox.com| 123456
      |The user credentials were incorrect.| a@mail.com|bubble666


