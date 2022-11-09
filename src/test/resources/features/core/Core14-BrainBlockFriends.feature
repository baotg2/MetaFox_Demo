@app_core @blockUser @brian @previewSite
Feature:  Brain Process On Add Friend UnFriend

  Scenario: Brian Block User
    Given the user logged in as "brian"
    And the browser opened at "/terry"
    And within the slot top
    When the user opens action menu
    And the user clicks on menu item "block"
    And the user accepts the confirm
    When within the content
    And the user "Unblock"
    Then the user sees page url contains "/settings/blocked"
    Then the user sees successful flash message