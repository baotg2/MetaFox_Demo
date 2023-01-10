@app_core @blockUser @brian @previewSite
Feature:  Brain Process On Block Friend

  Scenario: Brian Block User
    Given the user logged in as "brian1"
    And the browser opened at "/krixi1"
    And within the slot top
    When the user opens action menu
    And the user clicks on "block"
    And the user accepts the confirm
    When within the content
    And the user clicks on "buttonActionMenu"
    Then the user sees successful flash message
    And the user sees page url contains "/settings/blocked"
