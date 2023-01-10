@registerNewUser @previewSite @NonTearDownData
Feature: Verify Register New User Successfully
  @RG_01
  Scenario: Register New User Brian
    Given the user clicks on link "/register"
    And within the content
    Given the user fills firstName
    And the user fills lastName
    And the user fills fullName
    And the user add on "inputUserName" with value "brian1"
    And the user add on "inputEmail" with value "brian1@example.com"
    And the user add on "inputPassword" with value "123456789"
    And the user clicks on check box "checkbox"
    When the user submits the form
    Then the user sees items "Welcome Back" matches on site
  @RG_02
  Scenario: Register New User Krixi
    Given the user clicks on link "/register"
    And within the content
    Given the user fills firstName
    And the user fills lastName
    And the user fills fullName
    And the user add on "inputUserName" with value "krixi1"
    And the user add on "inputEmail" with value "luna1@example.net"
    And the user add on "inputPassword" with value "123456789"
    And the user clicks on check box "checkbox"
    When the user submits the form
    Then the user sees items "Welcome Back" matches on site
  @RG_03
  Scenario: Register New User Terry
    Given the user clicks on link "/register"
    And within the content
    Given the user fills firstName
    And the user fills lastName
    And the user fills fullName
    And the user add on "inputUserName" with value "terry1"
    And the user add on "inputEmail" with value "terry1@example.net"
    And the user add on "inputPassword" with value "123456789"
    And the user clicks on "inputAgree"
    When the user submits the form
    Then the user sees items "Welcome Back" matches on site
  @RG_04
  Scenario: Register New User Katie
    Given the user clicks on link "/register"
    And within the content
    Given the user fills firstName
    And the user fills lastName
    And the user fills fullName
    And the user add on "inputUserName" with value "katie1"
    And the user add on "inputEmail" with value "katie1@example.net"
    And the user add on "inputPassword" with value "123456789"
    And the user clicks on "inputAgree"
    When the user submits the form
    Then the user sees items "Welcome Back" matches on site
  @RG_05
  Scenario: Register New User Test
    Given the user clicks on link "/register"
    And within the content
    Given the user fills firstName
    And the user fills lastName
    And the user fills fullName
    And the user add on "inputUserName" with value "test1"
    And the user add on "inputEmail" with value "test1@example.net"
    And the user add on "inputPassword" with value "123456789"
    And the user clicks on "inputAgree"
    When the user submits the form
    Then the user sees items "Welcome Back" matches on site
