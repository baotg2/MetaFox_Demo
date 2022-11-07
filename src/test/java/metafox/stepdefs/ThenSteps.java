package metafox.stepdefs;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import metafox.support.DataProvider;
import metafox.support.Locator;
import metafox.support.Utility;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.LocalFileDetector;
import org.openqa.selenium.remote.RemoteWebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import javax.annotation.Nonnull;
import java.io.IOException;
import java.time.Duration;

import static org.junit.Assert.*;

/**
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 *
 * @version 1.0.1
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 * @Author baotg2
 * @purpose: ThenStepDefinitions is class defined all steps use Method @Then
 * @since 04-05-2022
 */
public class ThenSteps extends StepDefinitions {


    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param userName is invalid username
     * @param passWord is invalid password
     * @purpose verify error msg is displayed when login with invalid info username and passWord
     * @Author baotg2
     * -------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("I want to verified error message with user {string}, {string}")
    public void invalidUserCredentials(String userName, String passWord) {
        isComponentVisible.waitElement(By.id("mui-1"));
        components.componentSearchAttributes("Enter your email address").sendKeys(userName);
        components.componentSearchAttributes("Enter your password").sendKeys(passWord);
        components.componentButtonDataTestID("buttonLogin").click();
        isComponentVisible.waitElement(By.id("dialogDescription"));

    }

    /**
     * ---------------------------------------------------------------------------------------------------------------------------
     *
     * @param subItemsName is items want to access
     * @Author baotg2
     * --------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user access on sub items \"([^\"]*)\" more option$")
    public void the_user_access_sub_items(String subItemsName) {
        isComponentVisible.waitElement(By.xpath("//a[text()='" + subItemsName + "']"));
        components.componentListTextLink(subItemsName).get(1).click();
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param text is content of message want to verify
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user sees error message \"([^\"]*)\"$")
    public void isErrMsgDisplayed(String text) {
        WebElement error = waitUntilDisplayed(getSectionContext(), Locator.byText("p", text));
        assertTrue(error.isDisplayed());
    }

    @Then("the user see message {string}")
    public void isMessageDisplayed(String textMessage){
        WebElement msg = waitUntilDisplayed(getSectionContext(), Locator.byText("span", textMessage));
        assertTrue(msg.isDisplayed());
    }

    @Then("the user sees button {string} is enabled")
    public void isButtonEnabled(String buttonText){
        WebElement btnText = waitUntilDisplayed(getSectionContext(), Locator.byText("button", buttonText));
        assertTrue(btnText.isDisplayed());
    }
    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param fieldName is action name want to handle
     * @purpose click on button has name is fieldName and handle
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    //@Then("^the user want to edit \"([^\"]*)\"$")
//    public void editInfoAccount(String fieldName) {
//        isComponentVisible.waitElement(By.xpath("//div[@data-testid = '" + fieldName + "']//button[2]"));
//        components.componentDivButton(fieldName).get(0).click();
//    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @purpose handle add new album
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("the user want to add new album")
    public void addAlbum() {
        isComponentVisible.waitElement(By.xpath("//form[@data-testid ='form']"));
        components.componentButtonDataTestID("add_new_album").click();
        isComponentVisible.waitElement(By.xpath("//input[@name ='new_album.name']"));
        components.componentInputName("new_album.name").sendKeys(DataProvider.readConstants("Album"));
        components.componentTextAreaDataTestID("inputNewAlbumDescription").sendKeys(DataProvider.readConstants("Description"));
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param numberOfImage is number image want to upload
     * @purpose handle upload imnage from local machine
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("the user want upload {int} photo")
    public void addPhoto(int numberOfImage) {
        isComponentVisible.waitElement(By.xpath("//input[@type='file']"));

        if (Utility.isLocal(driver)) {
            WebElement upload = components.componentInputType("file");
            ((RemoteWebElement) upload).setFileDetector(new LocalFileDetector());
            upload.sendKeys(DataProvider.getSinglePhoto());
            if (numberOfImage > 1) {
                for (int i = 0; i < numberOfImage; i++) {
                    isComponentVisible.waitElement(By.xpath("//button[text() ='Add Photos']"));
                    upload.sendKeys(DataProvider.getSinglePhoto());
                }
            }
        } else {
            components.componentInputType("file").sendKeys(DataProvider.getSinglePhoto());
            if (numberOfImage > 1) {
                for (int i = 0; i < numberOfImage; i++) {
                    isComponentVisible.waitElement(By.xpath("//button[text() ='Add Photos']"));
                    components.componentInputType("file").sendKeys(DataProvider.getSinglePhoto());
                }
            }
        }
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param fieldName name of title field (album, blog)
     * @param value     is value want to input
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user clicks on input field \"([^\"]*)\" with value \"([^\"]*)\"$")
    public void inputValueOnField(String fieldName, @Nonnull String value) throws InterruptedException {
        isComponentVisible.waitElement(By.xpath("//input[@name='" + fieldName + "']"));


        if (value.equals("BlogName") || (value.equals("Album") || (value.equals("Groups")) || (value.equals("Polls")) || (value.equals("URLEvent")))) {
            components.componentInputName(fieldName).clear();
            components.componentInputName(fieldName).sendKeys(DataProvider.readConstants(value));
        } else {
            components.componentInputName(fieldName).clear();
            Thread.sleep(2000);
            components.componentInputName(fieldName).sendKeys(value);
        }
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param module menu's name on side menu
     * @throws IOException occurs when an IO operation fails
     * @purpose access side menu
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     */
    @Then("^I want to access \"([^\"]*)\"$")
    public void iWantToAccessMenu(String module) throws IOException {
        dataExecutor.setExcelFile("pages");
        for (int i = 1; i <= dataExecutor.getRowCountInSheet(); i++) {
            if (dataExecutor.getCellData(i, 2).toLowerCase().equals(module)) {
                components.componentLinkText(module).click();
                assertTrue(components.componentLinkText(dataExecutor.getCellData(i, 3)).isDisplayed());
                isBackToHomePage();
            }
        }
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param attributes field search name
     * @param keySearch  value search
     * @purpose search item or document
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user see search field \"([^\"]*)\" and typing keys \"([^\"]*)\"$")
    public void typingKeySearch(String attributes, @Nonnull String keySearch) {
        isComponentVisible.waitElement(By.xpath("//input[@placeholder='" + attributes + "']"));
        if (keySearch.equals("BlogName") || keySearch.equals("Album") || (keySearch.equals("Groups")) || (keySearch.equals("Polls"))) {
            components.componentSearchAttributes(attributes).sendKeys(DataProvider.readConstants(keySearch));
        } else {
            components.componentSearchAttributes(attributes).sendKeys(keySearch);
        }

        components.componentSearchAttributes(attributes).sendKeys(Keys.ENTER);
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param text content want to comment
     * @purpose add comment on items
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When("^the user add comment \"([^\"]*)\"$")
    public void addComment(String text) throws InterruptedException {
        By section = getSectionContext();
        WebElement commentBox = waitUntilDisplayed(section, Locator.byRole("combobox"));
        assertTrue(commentBox.isDisplayed());
        commentBox.sendKeys(text);
        commentBox.sendKeys(Keys.ENTER);
        verifyCommentAdded(text);
    }

    private void verifyCommentAdded(@Nonnull String text) {
        By section = getSectionContext();
        WebElement commentBox = waitUntilDisplayed(section, Locator.byTestId("comment"), Locator.byText("p", text));

        assertTrue(commentBox.isDisplayed());
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param currentURL value of url want to compare
     * @return true when url displayed success
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user see page \"([^\"]*)\"")
    public String getURL(String currentURL) {
        assertTrue(driver.getCurrentUrl().contains(currentURL));
        return currentURL;
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param buttonName name's button
     * @purpose verified button is displayed
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user see button \"([^\"]*)\"$")
    public void isButtonDisplayed(String buttonName) {
        isComponentVisible.waitElement(By.xpath("//button[text()='" + buttonName + "']"));
        assertTrue(components.componentButtonText(buttonName).isDisplayed());
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @purpose verified title of blog is displayed
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("the user verify title of blog is displayed")
    public void compareTitleBlogAdded() {
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='itemTitle']"));
        components.componentDivDataTestID("itemTitle").getText().contains(DataProvider.readConstants("BlogName"));
    }


    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param formValue id of form
     * @purpose verify form is displayed. Like report form, add form, etc
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user see main form \"([^\"]*)\"$")
    public void seeMainForm(String formValue) {
        isComponentVisible.waitElement(By.xpath("//form[@data-testid ='form']"));
        assertTrue(components.componentMainFormDataTestID(formValue).isDisplayed());
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param spanValue id of form
     * @purpose access user profile
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user want to access \"([^\"]*)\"$")
    public void accessUserProfile(String spanValue) throws InterruptedException {
        Thread.sleep(2000);
        isComponentVisible.waitElement(By.xpath("//span[@data-testid='" + spanValue + "']"));
        components.componentSpanDataTestID(spanValue).click();
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param spanValue id of form
     * @purpose access user profile
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user see label of action \"([^\"]*)\"$")
    public void seeLabelAction(String spanValue) {
        isComponentVisible.waitElement(By.xpath("//span[@data-testid='" + spanValue + "']"));
        components.componentSpanDataTestID(spanValue).isDisplayed();
    }


    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param statusContent is content of status
     * @purpose verify status after post
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user see \"([^\"]*)\"$")
    public void isStatusVisible(String statusContent) {
        isComponentVisible.waitElement(By.xpath("//p[text() = '" + statusContent + "']"));
        assertTrue(components.componentPText(statusContent).isDisplayed());
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param text is tab's name
     * @purpose verify elements h3 is displayed
     * @Author baotg2
     * -------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user see  tab \"([^\"]*)\"$")
    public void isTabDisplayedSuccess(String text) {
        isComponentVisible.waitElement(By.xpath("//h3[text()='" + text + "']"));
        assertEquals(components.componentH3ItemTitle(text).getText(), text);
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param ariaLabel is value ariaLabel of button
     * @purpose is click to action tag user on photo
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user want to click on button label \"([^\"]*)\" and process")
    public void startTagUser(String ariaLabel) {
        isComponentVisible.waitElement(By.xpath("//button[@aria-label ='" + ariaLabel + "']"));
        components.componentsTagButton(ariaLabel).click();
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param ariaLabel is value ariaLabel of button
     * @purpose is check button enabled_by_default
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
//    @Then("^the user see button \"([^\"]*)\" is default")
//    public void isButtonEnabled(String ariaLabel) {
//        isComponentVisible.waitElement(By.xpath("//button[@aria-label ='" + ariaLabel + "']"));
//        assertTrue(components.componentsTagButton(ariaLabel).isEnabled());
//    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param ariaLabel is value ariaLabel of button
     * @purpose is click to action tag user on photo
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user want to click on list button label \"([^\"]*)\" and process")
    public void ListStartTagUser(String ariaLabel) {
        isComponentVisible.waitElement(By.xpath("//button[@aria-label ='" + ariaLabel + "']"));
        components.componentsListTagButton(ariaLabel).get(1).click();
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param title is title content
     * @purpose click on the title content of items on search results page
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user see title \"([^\"]*)\" with value \"([^\"]*)\"")
    public void isTitleDisplayed(String title, String titleContent) {
        isComponentVisible.waitElement(By.xpath("//h4[@data-testid='" + title + "']"));
        assertEquals(components.componentH4DataTestID(title).getText(), titleContent);
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------
     *
     * @param userName is value off userName
     * @param tagList  is tag list friend
     * @purpose verify user is not displayed on tag list
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------
     * @since 06-10-2022
     */
    @Then("^the user don't see user \"([^\"]*)\" on tag list \"([^\"]*)\"$")
    public void seeUserOnTagList(String userName, String tagList) {
        assertFalse(components.componentsListH5DataTestID(tagList).toString().contains(userName));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------
     *
     * @param buttonName is name of button
     * @purpose verify the button displayed on screen
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------
     * @since 10-06-2022
     */
    @Then("^the user see id button \"([^\"]*)\"$")
    public void isButtonIdDisplayed(String buttonName) {
        isComponentVisible.waitElement(By.xpath("//button[@data-testid ='" + buttonName + "']"));
        assertTrue(components.componentButtonDataTestID(buttonName).isDisplayed());
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------
     *
     * @param compare is page address value
     * @param url     is page address value
     * @return true if move to page PageAddressValue success
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------
     * @since 10-06-2022
     */
    @Then("^the user sees page url (contains|matches) \"([^\"]*)\"$")
    public void isPageUrlContain(String compare, String url) {
        if (compare.equals("contains")) {
            new WebDriverWait(driver, Duration.ofSeconds(15)).until(ExpectedConditions.urlContains(url));
        } else {
            new WebDriverWait(driver, Duration.ofSeconds(15)).until(ExpectedConditions.urlMatches(url));
        }
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------
     *
     * @param postTitle the title of post on feed
     * @return true if the feed has post title displayed on screen
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------
     * @since 10-06-2022
     */
    @Then("^the user see the post \"([^\"]*)\" after upload")
    public boolean isThePostCreated(String postTitle) {
        isComponentVisible.waitElement(By.xpath("//div[@data-testid ='itemFeed']//div//span[2]"));
        assertTrue(driver.findElement(By.xpath("//div[@data-testid ='itemFeed']//div//span[2]")).getText().contains(postTitle));
        return true;
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param ariaLabel is value ariaLabel of button
     * @purpose is click to action tag user on photo
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user want to see tab \"([^\"]*)\" displayed on detail")
    public void isTabDisplayedOnDetail(String ariaLabel) {
        assertEquals(components.componentsListTagButton(ariaLabel).size(), 0);
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param elementName is data-testid attributes
     * @purpose verify div element is displayed
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user see div element \"([^\"]*)\" displayed")
    public void isDivDisplayed(String elementName) {
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='" + elementName + "']"));
        assertTrue(components.componentDivDataTestID(elementName).isDisplayed());
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param text is value want to verify
     * @purpose see topic link text is displayed
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("the user see an element {string}")
    public void isThreadDisplayedOnDetail(String text) {
        isComponentVisible.waitElement(By.xpath("//a[text()='" + text + "']"));
        assertTrue(components.componentTextLink(text).isDisplayed());
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param textValue is value want to verify
     * @purpose see topic of h4 element is displayed
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user see h4 \"([^\"]*)\"$")
    public void isH4TextDisplayed(String textValue) {
        isComponentVisible.waitElement(By.xpath("//h4[text()='" + textValue + "']"));
        assertTrue(components.componentH4Text(textValue).isDisplayed());
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param linkText is value want to verify
     * @purpose see link text is not displayed
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user see link text element \"([^\"]*)\" is not displayed on screen$")
    public void isLinkTextDisplayedOnDetail(String linkText) {
        assertEquals(components.componentListTestId(linkText).size(), 0);
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param imgSrc is attribute of img
     * @purpose verify imgSrc
     * @author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user see img \"([^\"]*)\"")
    public void isImageDisplayedOnDetail(String imgSrc) {
        isComponentVisible.waitElement(By.xpath("//img[@data-testid='imgLogo']"));
        assertTrue(components.componentImg("imgLogo").getAttribute("src").contains(imgSrc));
    }

    /**
     * -------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param buttonTestDataID is id of button
     * @purpose verify button is displayed
     * @Author baotg2
     * --------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user verify button test data id \"([^\"]*)\"$")
    public void isButtonTestDataIdDisplayed(String buttonTestDataID) {
        assertEquals(components.componentListButtonDataTestID(buttonTestDataID).size(), 0);
    }

    /**
     * ----------------------------------------------------------------------------------------------------------------------------
     *
     * @param tab is tab want to verify
     * @purpose verify tab opened successfully
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user want to verify tab \"([^\"]*)\" open successfully")
    public void isTabOpenSuccess(String tab) {
        switchTab(tab);
    }

    /**
     * ---------------------------------------------------------------------------------------------------------------------------
     *
     * @param subItemsName is items want to access
     * @purpose not see a elements displayed on pages
     * @Author baotg2
     * --------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user not see a text \"([^\"]*)\" displayed on page$")
    public void accessSubItems(String subItemsName) {
        assertEquals(components.componentListTextLink(subItemsName).size(), 0);
    }

    @Then("^the user verify input accept \"([^\"]*)\" displayed on page$")
    public void isInputAccepted(String inputAcceptValue) {
        isComponentVisible.waitElement(By.xpath("//input[contains(@accept, '" + inputAcceptValue + "')]"));
    }


    @Then("the user sees confirm popup")
    public void theUserSeesConfirmPopup() {
        WebElement popup = waitUntilDisplayed(Locator.byTestId("popupConfirm"));

        assertTrue(popup.isDisplayed());
    }

    @Then("the user sees text {string}")
    public void theUserSeesTextContains(@Nonnull String text) {
        WebElement element = waitUntilDisplayed(getSectionContext(), By.linkText(String.format("//*[contains(text(),'%s')]", text.trim())));
        assertTrue(element.isDisplayed());
    }

    @Then("^the user (sees|doesn't see) flag featured$")
    public void theUserSeesFlagFeatured(@Nonnull String action) {
        boolean negative = action.equalsIgnoreCase("doesn't");

        if (negative) {
            waitUntilInvisible(getSectionContext(), Locator.byTestId("featured"));
        } else {
            WebElement flag = waitUntilDisplayed(getSectionContext(), Locator.byTestId("featured"));
            assertTrue(flag.isDisplayed());
        }
    }

    @Then("^the user (sees|doesn't see) flag sponsored$")
    public void theUserSeesFlagSponsored(@Nonnull String action) {
        boolean negative = action.equalsIgnoreCase("doesn't");

        if (negative) {
            waitUntilInvisible(getSectionContext(), Locator.byTestId("sponsor"));
        } else {
            WebElement flag = waitUntilDisplayed(getSectionContext(), Locator.byTestId("sponsor"));
            assertTrue(flag.isDisplayed());
        }
    }

    @Then("the user see name {string}")
    public void verifyNameDisplayed(@Nonnull String name){
        By section = getSectionContext();
        WebElement commentBox = waitUntilDisplayed(section,Locator.byText("div", name));

        assertTrue(commentBox.isDisplayed());
    }
}