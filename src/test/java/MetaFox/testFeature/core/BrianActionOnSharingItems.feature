@MetaFox @core @brianProcessOnSharingItems
Feature: Brain Process On Sharing Items

  @BrainVerifyPrivacySharingBlogs
  Scenario: Brain Verify Privacy Sharing Blogs
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Sharing Items" page
    And the user select privacy at field "Blogs" and change to "Only Me"
    Then the user see message "Updated successfully" displayed
    And the user back to "linkLogo" page
    When the user action on "More"
    And the browser opened at item "blog" and tab "/blog/add"
    Then the user see "Only Me" is displayed on user profile
    Then I want to click on "Account Settings"
    And the user back to "Sharing Items" page
    And the user select privacy at field "Blogs" and change to "Everyone"

  @BrianVerifyPrivacyFeedDefaultPrivacy
  Scenario:Brain Verify Privacy Feed Default Privacy
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Sharing Items" page
    And the user select privacy at field "Feed default privacy" and change to "Only Me"
    Then the user see message "Updated successfully" displayed
    Then the user want to refresh page before handle the action
    And the user back to "linkLogo" page
    When the user "whatsHappening" this item
    Then the user see button "Only Me" is displayed
    And the user click on button "buttonClose"
    Then I want to click on "Account Settings"
    And the user back to "Sharing Items" page
    And the user select privacy at field "Blogs" and change to "Everyone"