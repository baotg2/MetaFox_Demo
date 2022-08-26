@MetaFox @core @brianProcessOnAccountSettingsIsNoOne
Feature: Brain Process On Account Settings Is No One

  @BrainVerifySendFriendRequestIsNoOne
  Scenario: Brain Verify Send Friend Request Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can send you a friend request?" and change to "No One"
    Then the user see message "Updated successfully" displayed
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search" and typing keys "brian"
    And the user want to click on "/brian"
    Then the user see button "Message" is displayed
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can send you a friend request?" and change to "Anyone"
    Then the user see message "Updated successfully" displayed

  @BrainVerifyViewHisFriendsListIsNoOne
  Scenario: Brain Verify View His Friends List Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "list?" and change to "No One"
    Then the user see message "Updated successfully" displayed
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search" and typing keys "brian"
    And the user want to click on "/brian"
    Then the user don't see tab "friend" on user profile
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "list?" and change to "Anyone"
    Then the user see message "Updated successfully" displayed

  @BrianVerifyPostOnHisWallIsNoOne
  Scenario: Brian Verify Post On His Wall Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can post on your wall?" and change to "No One"
    Then the user see message "Updated successfully" displayed
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search" and typing keys "brian"
    And the user want to click on "/brian"
    Then the user don't see "whatsHappening" is displayed
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can post on your wall?" and change to "Friends Only"
    Then the user see message "Updated successfully" displayed

  @BrianVerifyViewOnHisWallIsNoOne
  Scenario: Brian Verify View On His Wall Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view on your wall?" and change to "No One"
    Then the user see message "Updated successfully" displayed
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search" and typing keys "brian"
    And the user want to click on "/brian"
    Then the user see "No Content Found" on left menu
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view on your wall?" and change to "Friends Only"
    Then the user see message "Updated successfully" displayed

  @BrianVerifyViewBasicInformationIsNoOne
  Scenario: Brian Verify View Basic Information Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view your basic info?" and change to "No One"
    Then the user see message "Updated successfully" displayed
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search" and typing keys "brian"
    And the user want to click on "/brian"
    Then the user see "No Content" is displayed on user profile
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view your basic info?" and change to "Anyone"
    Then the user see message "Updated successfully" displayed

  @BrainVerifyViewPhotoIsNoOne
  Scenario: Brian Verify View Photo Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view photos on your profile page?" and change to "No One"
    Then the user see message "Updated successfully" displayed
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search" and typing keys "brian"
    And the user want to click on "/brian"
    And the user want to access items "photo" on user profile
    Then the user see "No Photos" is displayed on user profile
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view photos on your profile page?" and change to "Anyone"
    Then the user see message "Updated successfully" displayed

  @BrainVerifyViewProfilePageIsNoOne
  Scenario: Brian Verify View Profile Page Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view your profile page?" and change to "No One"
    Then the user see message "Updated successfully" displayed
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search" and typing keys "brian"
    And the user want to click on "/brian"
    Then the user see "Profile is private" on left menu
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view your profile page?" and change to "Anyone"
    Then the user see message "Updated successfully" displayed

  @BrainVerifyViewInfoTabOnProfilePageIsNoOne
  Scenario: Brian Verify Information Tab On Profile Page Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view the info tab on your profile page?" and change to "No One"
    Then the user see message "Updated successfully" displayed
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search" and typing keys "brian"
    And the user want to click on "/brian"
    Then the user don't see tab "about" on user profile
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view the info tab on your profile page?" and change to "Anyone"
    Then the user see message "Updated successfully" displayed

  @BrainVerifyTagByContextIsNoOne
  Scenario: Brian Verify Tag By Context Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can tag you in written context?" and change to "No One"
    Then the user see message "Updated successfully" displayed
    And I want to click on "Logout"
    Then the user logged in as "admin"
    And the user "whatsHappening" this item
    And the user click on button "statusTagFriendsButton"
    Then the user don't see user "brian" on tag list "itemTitle"
    And the user click on button "buttonDone"
    And the user click on button "buttonClose"
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can tag me in written contexts?" and change to "Anyone"
    Then the user see message "Updated successfully" displayed