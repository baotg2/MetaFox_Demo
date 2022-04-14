@pHpV5 @blogFunction
Feature: Verify main functions on Blogs item
  @ScenarioBlogs1
  Scenario:Add new blog
    Given I get pHpFox address
    Then I want to login pHpFox with user "brian" at sheet "users"
    And I want to access "blogs" and add new blog has title is "TestAuto_DoNoUSeImage", No add photo, has description is "TestAuto"
    And I want to logout and change another user
    Then I want to login pHpFox with user "luna" at sheet "users"
    And I want to access "blogs" and search "TestAuto_DoNoUSeImage"

  @ScenarioBlogs2
  Scenario: Search exist blog
    Given I get pHpFox address
    Then I want to login pHpFox with user "brian" at sheet "users"
    And I want to access "blogs" and search "Aut est eum cumque qui aperiam qui quia."

  @ScenarioBlogs3
  Scenario: Edit exist blog
    Given I get pHpFox address
    Then I want to login pHpFox with user "brian" at sheet "users"
    And I want to access "blogs" and search "Aut est eum cumque qui aperiam qui quia."
    Then I want to edit blog


  @ScenarioBlogs4
  Scenario:Add new blog
    Given I get pHpFox address
    Then I want to login pHpFox with user "brian" at sheet "users"
    And I want to access "blogs" and add new blog has title is "TestAutoHaveImage", Yes add photo, has description is "TestAuto"
    And I want to logout and change another user
    Then I want to login pHpFox with user "luna" at sheet "users"
    And I want to access "blogs" and search "TestAutoHaveImage"