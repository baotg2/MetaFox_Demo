@pHpV5 @blogFunction_Brian
Feature:  Brian process on blogs item


@BrianAddNewBlogAndSaveDraft
Scenario: Brian Add New Blog And Save As Draft
Given the user logged in as "brian"
Then the browser opened at item "blog" and tab "/blog/add"
Then the user action on input field "inputTitle" with value "BlogName"
Then the user don't add photo
And the user add value on div "textbox"
And the user want to add attach files
And the user want add categories is "Education"
And the user add topic is "tag-tag"
And the user click on button "buttonDraft"
And the user see message "Already saved blog as draft" displayed
Then the user verify title of blog is displayed
