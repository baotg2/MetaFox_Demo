@app_group @group_owner @brian @previewSite
Feature:  Owner Action On Manage Group Is Member Only

  Scenario: Owner Access Manage Permissions Group On Who can create posts
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroupManage"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "manage"
    Given within the sidebar menu
    And the user clicks on "Settings"
    And the user navigates to "/permissions"
    Given within the content
    Then the user sees text "Who can create posts?"
    When the user changes permissions "Who can create posts?" to "Members Only"

  Scenario: Owner Access Manage Permissions Group On Who can create blogs
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroupManage"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "manage"
    Given within the sidebar menu
    And the user clicks on "Settings"
    And the user navigates to "/permissions"
    Given within the content
    Then the user sees text "Who can create blogs?"
    When the user changes permissions "Who can create blogs?" to "Members Only"

  Scenario: Owner Access Manage Permissions Group On Who can create events
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroupManage"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "manage"
    Given within the sidebar menu
    And the user clicks on "Settings"
    And the user navigates to "/permissions"
    Given within the content
    Then the user sees text "Who can create events?"
    When the user changes permissions "Who can create events?" to "Members Only"

  Scenario: Owner Access Manage Permissions Group On Who can view admins and moderators
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroupManage"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "manage"
    Given within the sidebar menu
    And the user clicks on "Settings"
    And the user navigates to "/permissions"
    Given within the content
    Then the user sees text "Who can view admins and moderators?"
    When the user changes permissions "Who can view admins and moderators?" to "Members Only"

  Scenario: Owner Access Manage Permissions Group On Who can view group's publish date
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroupManage"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "manage"
    Given within the sidebar menu
    And the user clicks on "Settings"
    And the user navigates to "/permissions"
    Given within the content
    When the user changes permissions "publish date?" to "Members Only"

  Scenario: Owner Access Manage Permissions Group On Who can upload photos?
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroupManage"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "manage"
    Given within the sidebar menu
    And the user clicks on "Settings"
    And the user navigates to "/permissions"
    Given within the content
    Then the user sees text "Who can upload photos?"
    When the user changes permissions "Who can upload photos?" to "Members Only"

  Scenario: Owner Access Manage Permissions Group On Who can upload photos?
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroupManage"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "manage"
    Given within the sidebar menu
    And the user clicks on "Settings"
    And the user navigates to "/permissions"
    Given within the content
    Then the user sees text "Who can upload photos?"
    When the user changes permissions "Who can upload photos?" to "Members Only"

  Scenario: Owner Access Manage Permissions Group On Who can create albums?
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroupManage"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "manage"
    Given within the sidebar menu
    And the user clicks on "Settings"
    And the user navigates to "/permissions"
    Given within the content
    Then the user sees text "Who can create albums?"
    When the user changes permissions "Who can create albums?" to "Admin Only"

  Scenario: Owner Access Manage Permissions Group On Who can create polls?
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroupManage"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "manage"
    Given within the sidebar menu
    And the user clicks on "Settings"
    And the user navigates to "/permissions"
    Given within the content
    Then the user sees text "Who can create polls?"
    When the user changes permissions "Who can create polls?" to "Members Only"

  Scenario: Owner Access Manage Permissions Group On Who can create quizzes?
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroupManage"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "manage"
    Given within the sidebar menu
    And the user clicks on "Settings"
    And the user navigates to "/permissions"
    Given within the content
    Then the user sees text "Who can create quizzes?"
    When the user changes permissions "Who can create quizzes?" to "Members Only"

  Scenario: Owner Access Manage Permissions Group On Who can upload videos?
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroupManage"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "manage"
    Given within the sidebar menu
    And the user clicks on "Settings"
    And the user navigates to "/permissions"
    Given within the content
    Then the user sees text "Who can upload videos?"
    When the user changes permissions "Who can upload videos?" to "Members Only"