@pHpV5 @PhotoFunction_Brian
Feature:  Brian process on photos item
  @BrianAddNewPhoto
  Scenario: Brian Add New Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want to add new album