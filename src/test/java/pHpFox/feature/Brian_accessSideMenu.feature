@pHpV5 @sideMenu
Feature: Verify access side menu success
  @ScenarioAccessSideMenu1
  Scenario: verify access child side menu
      Given I get pHpFox address
      Then I want to login pHpFox with user "brian" at sheet "users"
      Then I want to access "blogs" menu at "pages"
      Then I want to access "videos" menu at "pages"
      Then I want to access "photos" menu at "pages"
      Then I want to access "polls" menu at "pages"

