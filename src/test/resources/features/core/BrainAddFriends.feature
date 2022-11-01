@MetaFox @core  @brianActionAdd_UnFriend @previewSite
Feature:  Brain Process On Add Friend UnFriend

  @BrianBlockUser
  Scenario: Brian Block User
    Given the user logged in as "brian"
    Then the user searches with text "terry"
    And the user want to click on "/terry"
    Then the user want to click on button label "ActionMenu" and process
    And the user clicks on "Block this user"
    And the user accepts the confirm
    And the user want to "Unblock"
    Then the user sees page url contains "/settings/blocked"
    Then the user sees successful flash message