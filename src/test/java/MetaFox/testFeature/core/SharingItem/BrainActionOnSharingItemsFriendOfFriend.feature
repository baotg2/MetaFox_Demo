@MetaFox @core @brianProcessOnSharingItemsFriendsOfFriends
Feature: Brain Process On Sharing Items Friends of Friends

  @BrianVerifyPrivacyFeedDefaultPrivacyIsFriendsOfFriends
  Scenario:Brain Verify Privacy Feed Default Privacy Is Friends of Friends
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user action on "Sharing Items"
    And the user select privacy at field "Feed default privacy" and change to "Friends of Friends"
    Then the user see message "Updated successfully" displayed
    And the user back to "linkLogo" page
    Then the user want to refresh page before handle the action
    When the user "whatsHappening" this item
    Then the user see button "Friends of Friends" is displayed
    And the user click on button "buttonClose"
    Then I want to click on "Account Settings"
    And the user action on "Sharing Items"
    And the user select privacy at field "Feed default privacy" and change to "Everyone"

  @BrainVerifyPrivacySharingBlogsIsFriendsOfFriends
  Scenario: Brain Verify Privacy Sharing Blogs Is Friends of Friends
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user action on "Sharing Items"
    And the user select privacy at field "Blogs" and change to "Friends of Friends"
    Then the user see message "Updated successfully" displayed
    And the user back to "linkLogo" page
    When the user action on "More"
    And the browser opened at item "blog" and tab "/blog/add"
    Then the user see "Friends of Friends" is displayed on user profile
    Then I want to click on "Account Settings"
    And the user action on "Sharing Items"
    And the user select privacy at field "Blogs" and change to "Everyone"

  @BrainVerifyPrivacySharingEventsIsFriendsOfFriends
  Scenario: Brain Verify Privacy Sharing Events Is Friends of Friends
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user action on "Sharing Items"
    And the user select privacy at field "Events" and change to "Friends of Friends"
    Then the user see message "Updated successfully" displayed
    And the user back to "linkLogo" page
    When the user action on "More"
    And the browser opened at item "event" and tab "/event/add"
    Then the user see "Friends of Friends" is displayed on user profile
    Then I want to click on "Account Settings"
    And the user action on "Sharing Items"
    And the user select privacy at field "Events" and change to "Everyone"

  @BrainVerifyPrivacySharingPhotoIsFriendsOfFriend
  Scenario: Brain Verify Privacy Sharing Photo Is Friends of Friends
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user action on "Sharing Items"
    And the user select privacy at field "Photos" and change to "Friends of Friends"
    Then the user see message "Updated successfully" displayed
    And the user back to "linkLogo" page
    When the user action on "More"
    And the browser opened at item "photo" and tab "/photo/add"
    Then the user see "Friends of Friends" is displayed on user profile
    Then I want to click on "Account Settings"
    And the user action on "Sharing Items"
    And the user select privacy at field "Photos" and change to "Everyone"

  @BrainVerifyPrivacySharingPhotoAlbumsIsFriendsOfFriends
  Scenario: Brain Verify Privacy Sharing Photos Albums Is Friends of Friends
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user action on "Sharing Items"
    And the user select privacy at field "Photo Albums" and change to "Friends of Friends"
    Then the user see message "Updated successfully" displayed
    And the user back to "linkLogo" page
    When the user action on "More"
    And the browser opened at item "photo" and tab "/photo/album/add"
    Then the user see "Friends of Friends" is displayed on user profile
    Then I want to click on "Account Settings"
    And the user action on "Sharing Items"
    And the user select privacy at field "Photo Albums" and change to "Everyone"

  @BrainVerifyPrivacySharingPollsIsFriendsOfFriends
  Scenario: Brain Verify Privacy Sharing Polls Is Friends of Friends
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user action on "Sharing Items"
    And the user select privacy at field "Polls" and change to "Friends of Friends"
    Then the user see message "Updated successfully" displayed
    And the user back to "linkLogo" page
    When the user action on "More"
    And the browser opened at item "poll" and tab "/poll/add"
    Then the user see "Friends of Friends" is displayed on user profile
    Then I want to click on "Account Settings"
    And the user action on "Sharing Items"
    And the user select privacy at field "Polls" and change to "Everyone"

  @BrainVerifyPrivacySharingVideosIsFriendsOfFriends
  Scenario: Brain Verify Privacy Sharing Videos Is Friends of Friends
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user action on "Sharing Items"
    And the user select privacy at field "Videos" and change to "Friends of Friends"
    Then the user see message "Updated successfully" displayed
    And the user back to "linkLogo" page
    When the user action on "More"
    And the browser opened at item "video" and tab "/video/share"
    Then the user see "Friends of Friends" is displayed on user profile
    Then I want to click on "Account Settings"
    And the user action on "Sharing Items"
    And the user select privacy at field "Videos" and change to "Everyone"