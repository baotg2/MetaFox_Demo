@MetaFox @events @brianActionOnPublicEvents
Feature:  Brain Process On Public Events

  @BrianAddNewEventsWithEmptyValue
  Scenario: Brian Add New Events With Empty Value
    Given the user logged in as "brian"
    Then the user action on "More"
    Then the browser opened at item "event" and tab "/event/add"
    And the user action on input field "inputName" with value "Groups"
