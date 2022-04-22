@pHpV5 @PhotoFunction_Brian
Feature:  Brian process on photos item

@BrianAddNewAlbumWithoutPhoto
Scenario: Brian Add New Album Without Image
  Given the user logged in as "brian"
  Then the browser opened at item "photo" and tab "/photo/add"
  And the user want to add new album
  And the user click on button"buttonSubmit"
  And the user see message "The files field is required." displayed

@BrainAddNewPhoto
Scenario: Brian Add New Photo
  Given the user logged in as "brian"
  Then the browser opened at item "photo" and tab "/photo/my"
  And the user verify "itemPhoto" before upload
  And the user back to home page
  Then the browser opened at item "photo" and tab "/photo/add"
  And the user want upload 2 photo
  And the user want add categories is "Comedy"
  And the user click on button"buttonSubmit"
  And the user see message "Media item successfully uploaded." displayed
  Then the user verify "itemPhoto" after upload

@BrainAddNewAlbumWithPhoto
Scenario: Brian Add New Album With Photo
  Given the user logged in as "brian"
  Then the browser opened at item "photo" and tab "/photo/my-albums"
  And the user verify "itemMedia" before upload
  And the user back to home page
  Then the browser opened at item "photo" and tab "/photo/add"
  And the user want upload 1 photo
  And the user want to add new album
  And the user click on button"buttonSubmit"
  And the user see message "Media item successfully uploaded." displayed
  And the user back to home page
  Then the browser opened at item "photo" and tab "/photo/my-albums"
  Then the user verify "itemMedia" after upload


@BrianSearchHisAlbum
Scenario: Brian Search His Album
  Given the user logged in as "brian"
  Then the browser opened at item "photo" and tab "/photo/albums"
  And the user see search field "Search albums" and typing keys "NewAlbum"
  And the user access first condition "inputSort"
  And the user access first condition "inputWhen"
  Then the user not see "No Results Found" is displayed on result table


@BrianReactionOnPhoto
Scenario: Brian Reaction On Photo
  Given the user logged in as "brian"
  Then the browser opened at item "photo" and tab "/photo/all"
  And the user click on div "itemPhoto" and process
  And the user click on button"reactionButton"
  Then the user see result of "reactionResult" displayed

@BrianReactionOnAlbum
Scenario: Brian Reaction On Album
  Given the user logged in as "brian"
  Then the browser opened at item "photo" and tab "/photo/albums"
  And the user see title "All Albums" is displayed
  And the user click on div "itemMedia" and process
  And the user click on button"reactionButton"
  Then the user see result of "reactionResult" displayed


@BrianReportPhoto
Scenario: Brian Report Photo
  Given the user logged in as "brian"
  Then the browser opened at item "photo" and tab "/photo/all"
  And the user see title "All Photos" is displayed
  And the user click on button"actionMenuButton"
  And the user "report" this item
  Then the user see main form "form" is displayed


@BrianReportAlbum
Scenario: Brian Report Album
  Given the user logged in as "brian"
  Then the browser opened at item "photo" and tab "/photo/albums"
  And the user see title "All Albums" is displayed
  And the user click on button"actionMenuButton"
  And the user "Report" this item
  Then the user see main form "form" is displayed