@MetaFox @AdminVerifyUrlMetaFox

Feature: Admin verify url on site

  @AdminVerifyUrlOnSite
  Scenario: Admin verify url on AdminCP
    Given the user logged in as "admin"
    When the user verify URL detail on "site"

  @AdminVerifyUrlOnACP
  Scenario: Admin verify url on AdminCP
    Given the user logged in as "admin"
    When the user verify URL detail on "admincp"