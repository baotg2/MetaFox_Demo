@MetaFox @core @brianProcessOnSharingItemsFriends @previewSite
Feature: Brain Process On Sharing Items Friends

  @BrianVerifyPrivacyFeedDefaultPrivacyIsFriends
  Scenario:Brain Verify Privacy Feed Default Privacy Is Friends
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Feed default privacy" and change to "Friends"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    Then the user want to refresh page before handle the action
    When the user "whatsHappening" this item
    Then the user seesbutton "Friends" is displayed
    And the user clicks on button "buttonClose"
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Feed default privacy" and change to "Everyone"

  @BrainVerifyPrivacySharingBlogsIsFriends
  Scenario: Brain Verify Privacy Sharing Blogs
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Blogs" and change to "Friends"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    When the user clicks on "More"
    And the browser opened at item "blog" and tab "/blog/add"
    Then the user sees text "Friends "
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Blogs" and change to "Everyone"

  @BrainVerifyPrivacySharingEventsIsFriends
  Scenario: Brain Verify Privacy Sharing Events Is Friends
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Events" and change to "Friends"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    When the user clicks on "More"
    And the browser opened at item "event" and tab "/event/add"
    Then the user sees text "Friends "
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Events" and change to "Everyone"

  @BrainVerifyPrivacySharingPhotoIsFriends
  Scenario: Brain Verify Privacy Sharing Photo Is Friends
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Photos" and change to "Friends"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    When the user clicks on "More"
    And the browser opened at item "photo" and tab "/photo/add"
    Then the user sees text "Friends "
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Photos" and change to "Everyone"

  @BrainVerifyPrivacySharingPhotoAlbumsIsFriends
  Scenario: Brain Verify Privacy Sharing Photos Albums Is Friends
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Photo Albums" and change to "Friends"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    When the user clicks on "More"
    And the browser opened at item "photo" and tab "/photo/album/add"
    Then the user sees text "Friends "
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Photo Albums" and change to "Everyone"

  @BrainVerifyPrivacySharingPollsIsFriends
  Scenario: Brain Verify Privacy Sharing Polls Is Friends
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Polls" and change to "Friends"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    When the user clicks on "More"
    And the browser opened at item "poll" and tab "/poll/add"
    Then the user sees text "Friends "
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Polls" and change to "Everyone"

  @BrainVerifyPrivacySharingVideosIsFriends
  Scenario: Brain Verify Privacy Sharing Videos Is Friends
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Videos" and change to "Friends"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    When the user clicks on "More"
    And the browser opened at item "video" and tab "/video/share"
    Then the user sees text "Friends "
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Videos" and change to "Everyone"