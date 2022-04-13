@pHpV5 @sideMenu
Feature: Verify access side menu success
  @ScenarioBlogs1
  Scenario: verify access child side menu
      Given I get pHpFox address
      Then I want to login pHpFox with user "admin" at sheet "users"
      Then I want to access "blogs" menu at "pages"

  @ScenarioBlogs2
  Scenario: I add new blog
    Given I get pHpFox address
    Then I want to login pHpFox with user "admin" at sheet "users"
    And I want to access "blogs" and add new blog has title is "test", Yes add photo
