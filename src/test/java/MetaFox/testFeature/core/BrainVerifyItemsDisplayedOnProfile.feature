@MetaFox @core  @brianActionVerifyItemsDisplayedSuccess
Feature:  Brain Process Verify Item Displayed Success On Profile

@BrianSeeAlbumDisplayedOnProfile
Scenario: Brian See Album Displayed on Profile
  Given the user logged in as "brian"
  When the browser opened at item "photo" and tab "/blog/my"
  Then the user verify items "itemTitle" displayed on "<string>"