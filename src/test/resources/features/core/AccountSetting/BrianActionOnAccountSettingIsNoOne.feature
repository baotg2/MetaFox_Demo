@MetaFox @core @brianProcessOnAccountSettingsIsNoOne
Feature: Brain Process On Account Settings Is No One

  @BrainVerifySendFriendRequestIsNoOne
  Scenario: Brain Verify Send Friend Request Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can send you a friend request?" and change to "No One"
    Then the user sees successful flash message
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user sees search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    Then the user seesbutton "Message" is displayed
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can send you a friend request?" and change to "Community"
    Then the user sees successful flash message

  @BrainVerifyViewHisFriendsListIsNoOne
  Scenario: Brain Verify View His Friends List Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "list?" and change to "No One"
    Then the user sees successful flash message
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user sees search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    Then the user don't see tab "friend" on user profile
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "list?" and change to "Community"
    Then the user sees successful flash message

  @BrianVerifyPostOnHisWallIsNoOne
  Scenario: Brian Verify Post On His Wall Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can post on your profile?" and change to "No One"
    Then the user sees successful flash message
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user sees search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    Then the user don't see "whatsHappening" is displayed
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can post on your profile?" and change to "Community"
    Then the user sees successful flash message

  @BrianVerifyViewOnHisWallIsNoOne
  Scenario: Brian Verify View On His Wall Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can view the posts or activities on your profile?" and change to "No One"
    Then the user sees successful flash message
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user sees search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    Then the user sees text "No content is found. "
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can view the posts or activities on your profile?" and change to "Friends Only"
    Then the user sees successful flash message

  @BrianVerifyViewBasicInformationIsNoOne
  Scenario: Brian Verify View Basic Information Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can view your basic info?" and change to "No One"
    Then the user sees successful flash message
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user sees search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    Then the user don't see "detailview profile detail about" is displayed
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can view your basic info?" and change to "Community"
    Then the user sees successful flash message

  @BrainVerifyViewPhotoIsNoOne
  Scenario: Brian Verify View Photo Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can view photos on your profile page?" and change to "No One"
    Then the user sees successful flash message
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user sees search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    Then the user not see a text "Photos" displayed on page
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can view photos on your profile page?" and change to "Community"
    Then the user sees successful flash message

  @BrainVerifyViewProfilePageIsNoOne
  Scenario: Brian Verify View Profile Page Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can view your profile page?" and change to "No One"
    Then the user sees successful flash message
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user sees search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    Then the user sees text "Profile is private "
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can view your profile page?" and change to "Community"
    Then the user sees successful flash message

  @BrainVerifyViewInfoTabOnProfilePageIsNoOne
  Scenario: Brian Verify Information Tab On Profile Page Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can view the info tab on your profile page?" and change to "No One"
    Then the user sees successful flash message
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user sees search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    Then the user don't see tab "about" on user profile
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can view the info tab on your profile page?" and change to "Community"
    Then the user sees successful flash message

  @BrainVerifyTagByContextIsNoOne
  Scenario: Brian Verify Tag By Context Is NoOne
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "mention me?" and change to "No One"
    Then the user sees successful flash message
    And I want to click on "Logout"
    Then the user logged in as "admin"
    And the user "whatsHappening" this item
    And the user clicks on button "statusTagFriendsButton"
    Then the user don't see user "brian" on tag list "itemTitle"
    And the user clicks on button "buttonDone"
    And the user clicks on button "buttonClose"
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can tag you in a written context?" and change to "Community"
    Then the user sees successful flash message