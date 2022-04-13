@pHpV5 @sideMenu
Feature: Verify main function on Blogs item
  @ScenarioBlogs1
  Scenario: I add new blog
    Given I get pHpFox address
    Then I want to login pHpFox with user "admin" at sheet "users"
    And I want to access "blogs" and add new blog has title is "test", Yes add photo