@pHpV5 @Login
Feature: VerifyLogin access side menu success
   @ScenarioBlogs1
    Scenario: verify access sideMenuBar success
       Given I want to open pHp by Firefox
       Then I want to login pHpFox with user "admin" at sheet "users"
       Then I want to access "friends" menu
       And I back to homePage and I see "friends"
      Then I want to access "blogs" menu
      And I back to homePage and I see "blogs"
      Then I want to access "members" menu
      And I back to homePage and I see "members"

