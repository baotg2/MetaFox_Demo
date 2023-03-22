@app_core @member @admin @previewSite
Feature: Admin Feature Members

  Scenario: Admin Feature Members On Profile
    Given the user logged in as "admin"
    And the browser opened at "/brian1"
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "feature"
    Then the user sees successful flash message

  Scenario: Admin Verify User Featured
    Given the user logged in as "admin"
    And the browser opened at "/user/featured"
    And within the content
    Then the user sees "brian1" on screen

  Scenario: Admin Feature Themself
    Given the user logged in as "admin"
    And the browser opened at "/admin"
    When within the slot top
    And the user moves to tab "Feature this User"
    Then the user sees successful flash message

  Scenario: Admin UnFeature Themself
    Given the user logged in as "admin"
    And the browser opened at "/admin"
    When within the slot top
    And the user moves to tab "Un-featured this User"
    Then the user sees successful flash message

