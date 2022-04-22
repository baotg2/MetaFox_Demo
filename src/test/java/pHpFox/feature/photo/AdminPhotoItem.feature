@pHpV5 @PhotoItem_Admin
Feature: Admin process on photos item

  @AdminSeePendingPhoto
  Scenario: AdminSeePendingPhoto
    Given the user logged in as "admin"
    Then the browser opened at item "photo" and tab "/photo/pending"
    And the user see title "Pending Photos" is displayed
    And the user back to home page


