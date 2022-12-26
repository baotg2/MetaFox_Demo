@announcement @admin @previewSite
Feature: Admin Action On ACP Announcement

  Scenario: Admin Add New Announcement All Role On ACP
    Given the user logged in as "admin"
    And the browser opened at "/admincp/announcement/announcement/create"
    And within the content
    When the user add on "inputSubject" with value "IsAutoAnnouncements Subject"
    And the user add on "inputIntro" with value "IsAutoAnnouncements Intro"
    And the user types a sentence in "inputText"
    When the user want to scroll to the end of page
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin Search Announcement
    Given the user logged in as "admin"
    And the browser opened at "/admincp/announcement/announcement/browse"
    And within the content
    When the user clicks on input field "q" with value "IsAutoAnnouncements Subject"
    And the user clicks on button "buttonSubmit"
    Then the user see message "IsAutoAnnouncements Subject"

  Scenario: Admin Verify Announcement On Site
    Given the user logged in as "admin"
    And the browser opened at "/"
    And within the subside
    Then the user sees items "IsAutoAnnouncements Subject" matches on site
    And the user sees items "IsAutoAnnouncements Intro" matches on site

  Scenario: Admin Not Mark As Read
    Given the user logged in as "admin"
    And the browser opened at "/"
    And within the subside
    Then the user see message "Mark as Read"

  Scenario: Admin Mark As Read Announcement
    Given the user logged in as "admin"
    And the browser opened at "/"
    And within the subside
    Then the user marks as read announcements