@app_group @group_owner @previewSite
Feature:  Owner Action On Public Groups

  Scenario: Owner Add New Group
    Given the user logged in as "brian1"
    And the browser opened at "/group/add"
    And within the content
    Given the user add on "inputName" with value "IsTestAutoGroup"
    And the user types a sentence in "inputText"
    And the user add value on "select-reg_method" is "Public"
    And the user clicks on button "buttonSubmit"
    Given within the slot top
    Then the user sees text "IsTestAutoGroup"

  Scenario: Owner Change Cover Image
    Given the user logged in as "admin"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroup"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    And the user want upload 1 photo
    And the user want to "Save"
    Then the user sees successful flash message
    Given within the content
    And the user navigates to "/home"
    And the user want to refresh page before handle the action
    Then the user sees text "updated the group cover photo"

  Scenario: Admin Add Blog On Group
    Given the user logged in as "admin"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroup"
    Given within the content
    And the user clicks on the item title
    Given the user navigates to "/blog"
    When the user clicks on element link text a "Add New Blog"
    Then the user sees text "Add New Blog"
    Then the user adds title with value "BlogName"
    And the user adds description
    And the user attaches a photo
    And the user adds a category
    And the user adds a tag
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    Then the user verify title of blog is displayed

  Scenario: Admin Add Poll On Groups
    Given the user logged in as "admin"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroup"
    Given within the content
    And the user clicks on the item title
    And within the content
    When the user adds poll on feed
    And within the basic
    When the user add on "inputPollQuestion" with value "IsThisAutoPoll"
    And the user add value "Yes" on element "1"
    And the user add value "No" on element "2"
    And the user want to "Done"
    Given within the status composer
    And the user clicks on button "submit"
    Given within the content
    Then the user sees text "added a poll"
    Then the user sees text "IsThisAutoPoll"

  Scenario: Owner Verify Poll On Group
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroup"
    Given within the content
    And the user clicks on the item title
    Given the user navigates to "/poll"
    Then the user sees text "IsThisAutoPoll"

  Scenario: Admin Add Event Online On Group
    Given the user logged in as "admin"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroup"
    Given within the content
    And the user clicks on the item title
    Given the user navigates to "/event"
    When the user clicks on link "/event/add"
    And within the content
    When the user add on "inputName" with value "Dreamworld Venues"
    And the user types a sentence in "inputText"
    And the user turn off setting "inputIsOnline"
    When the user add on "inputEventUrl" with value "https://zoom.us/"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And the user sees page url matches "/event/\d+"

  Scenario: Owner Verify Event On Group
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroup"
    Given within the content
    And the user clicks on the item title
    Given the user navigates to "/event"
    Then the user sees text "Dreamworld Venues"