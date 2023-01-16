package metafox.stepdefs;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import metafox.support.DataProvider;
import metafox.support.Locator;
import metafox.support.Privacy;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import javax.annotation.Nonnull;
import java.time.Duration;
import java.util.List;
import java.util.Objects;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 *
 * @version 1.0.1
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 * @Author baotg2
 * @purpose: WhenStepDefinitions is class defined all steps use Method @When
 * @since 04-05-2022
 */
public class WhenSteps extends StepDefinitions {

    public WhenSteps() throws InterruptedException {
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param item item name
     * @param url  link to page want to open
     * @purpose link to page on Side Menu
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When("^the browser opened at item \"([^\"]*)\" and tab \"([^\"]*)\"$")
    public void openNewURL(String item, String url) throws InterruptedException {
        Thread.sleep(3000);
        isComponentVisible.waitElement(By.xpath("//a[contains(@href, '" + item + "')]"));
        components.componentLinkText(item).click();
        Thread.sleep(3000);
        if (!Objects.equals(url, "")) {
            components.componentLinkText(url).click();
        }
        Thread.sleep(3000);
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param url link want to move
     * @purpose moved to other page by href
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------------
     */
    @When("^the user clicks on link \"([^\"]*)\"$")
    public void accessNewPage(String url) {
        WebElement link = waitUntilDisplayed(Locator.byHref(url));
        assertTrue(link.isDisplayed());
        link.click();
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @purpose move to previous page
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When("^back to previous page")
    public void backToPreviousPage() {
        driver.navigate().back();
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param placeHolder style of field sign up
     * @param value       input
     * @purpose input value of email form
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When("^the user input info sign up \"([^\"]*)\" with value \"([^\"]*)\"$")
    public void valueEmailSignUp(String placeHolder, String value) {
        components.componentSearchAttributes(placeHolder).sendKeys(value);
        components.componentSearchAttributes(placeHolder).sendKeys(Keys.ENTER);
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param value of tool tip
     * @purpose access tool tip on user profile from more
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When("^the user want access tool tip \"([^\"]*)\" from More")
    public void accessToolTip(String value) {
        components.componentTooltip(value).click();
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param value   is value want to input
     * @param element is element on web page
     * @purpose add value on TextArea
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-02-2022
     */
    @When("^the user add value \"([^\"]*)\" on textArea \"([^\"]*)\"$")
    public void addContent(String value, String element) {
        isComponentVisible.waitElement(By.xpath("//textarea[@data-testid ='" + element + "']"));
        components.componentTextAreaDataTestID(element).clear();
        components.componentTextAreaDataTestID(element).sendKeys(value);
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param value   is value want to input
     * @param element is element on web page
     * @purpose add value on TextArea
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-02-2022
     */
    @When("^the user add value \"([^\"]*)\" on textArea place holder \"([^\"]*)\"$")
    public void addContentAnswer(String value, String element) {
        isComponentVisible.waitElement(By.xpath("textarea[@placeholder ='" + element + "']"));
        components.componentTextAreaPlaceholder(element).sendKeys(value);
    }


    /**
     * ------------------------------------------------------------------------------------------------------------------------------------
     *
     * @purpose the user want to change cover image
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-15-2022
     */
    @When("^the user want to changed cover image")
    public void changeCOverImage() {
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='upload_photo']"));
        components.componentDivDataTestID("upload_photo").click();
    }

    /**
     * ----------------------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @purpose upload media
     * @author baotg2
     * --------------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-15-2022
     */
    @When("^the user upload media$")
    public void uploadMedia() throws InterruptedException {
        Thread.sleep(6000);
        DataProvider.uploadFile("./src/test/resources/fixtures/imageTest5.jpg");
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param index is index of element on dropdown list
     * @purpose select elements on dropdown list has position index
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When("the user want to select category at {int} on dropdown list {string}")
    public void selectCategory(int index, String dropdown_listName) throws InterruptedException {
        Thread.sleep(2000);
        components.componentInputID(dropdown_listName).click();
        for (int i = 0; i < index; i++) {
            components.componentInputID(dropdown_listName).sendKeys(Keys.DOWN);
        }
        components.componentInputID(dropdown_listName).sendKeys(Keys.ENTER);
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param actionName is actionName
     * @purpose applied on button click
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-15-2022
     */
    @When("^the user see \"([^\"]*)\" and click on$")
    public void clickOnActionMenu(String actionName) {
        components.componentsActionButton(actionName).click();
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param type is type want to select
     * @param id   is position of type
     * @purpose select type Polls
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-15-2022
     */
    @When("^the user select type \"([^\"]*)\" on \"([^\"]*)\"$")
    public void selectTypeOnField(@Nonnull String type, String id) {
        isComponentVisible.waitElement(By.id(id));
        components.componentsListDivRole("button").get(0).click();
        switch (type) {
            case "Checkbox":
                components.componentsDivDataValue("2").click();
                break;
            case "Multiple Choice":
                components.componentsDivDataValue("1").click();
                break;
            case "Written Answer":
                components.componentsDivDataValue("0").click();
                break;
        }
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param notification is content of the notification
     * @throws InterruptedException is thrown if interruptedException
     * @purpose click on notification has content is notification
     * @Author baotg2
     * ----------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-15-2022
     */
    @When("^the user clicks on notification \"([^\"]*)\" and process$")
    public void findAndSelectNotifications(String notification) throws InterruptedException {
        Thread.sleep(3000);
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='itemSummary']"));
        for (int i = 0; i < components.componentListDivDataTestID("itemSummary").size(); i++) {
            if (components.componentListDivDataTestID("itemSummary").get(i).getText().contains(notification)) {
                components.componentListDivDataTestID("itemSummary").get(i).click();
            } else {
                components.componentListDivDataTestID("itemSummary").get(0).click();
            }
        }
    }

//    /**
//     * ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//     *
//     * @throws InterruptedException is thrown when interruptedException
//     * @purpose select first item form tag list
//     * @Author baotg2
//     * --------------------------------------------------------------------------------------------------------------------------------------------------------------
//     * @since 06-15-2022
//     */
//    @When("^the user tag first friend on list tag$")
//    public void tagFirstFriendOnList() throws InterruptedException {
//        Thread.sleep(6000);
//        if (components.componentsListH5DataTestID("itemTitle").isDisplayed()) {
//            components.componentsListH5DataTestID("itemTitle").click();
//            components.componentsListH5DataTestID("itemTitle").click();
//        } else {
//            components.componentsDivMsg("No people found").isDisplayed();
//        }
//    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param actionInvite is action name on invite tab
     * @purpose approve or deny the invite
     * @Author baotg2
     * ----------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-16-2022
     */
    @When("^the user \"([^\"]*)\" on invite$")
    public void actionOnInvite(String actionInvite) {
        isComponentVisible.waitElement(By.xpath("//h5[text()='" + actionInvite + "']"));
        components.componentH5Text(actionInvite).click();
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param actionInvite is action name on invite tab
     * @purpose see element h5 has value is actionInvite displayed
     * @Author baotg2
     * ----------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-16-2022
     */
    @When("^the user see h5 text \"([^\"]*)\" displayed$")
    public void isElementH5Display(String actionInvite) {
        isComponentVisible.waitElement(By.xpath("//h5[text()='" + actionInvite + "']"));
        assertTrue(components.componentH5Text(actionInvite).isDisplayed());
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param actionInvite name of the user invited
     * @purpose see user invited displayed on invite tab
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-15-2022
     */
    @When("^the user see \"([^\"]*)\" on invited tab$")
    public void actionOnInvitedTab(String actionInvite) {
        isComponentVisible.waitElement(By.xpath("//a[text()='" + actionInvite + "']"));
        assertTrue(driver.findElement(By.xpath("//a[text()='" + actionInvite + "']")).isDisplayed());
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param type is type want to select on Polls
     * @purpose select type when create a new POlls
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-15-2022
     */
    @When("^the user select type \"([^\"]*)\"$")
    public void selectType(String type) {
        isComponentVisible.waitElement(By.xpath("//input[@aria-label ='" + type + "']"));
        if (!components.componentsInputChecked(type).isSelected()) {
            components.componentsInputChecked(type).click();
        }
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param username is the username vote on Polls
     * @throws InterruptedException is thrown if interruptedException
     * @purpose control vote random option of Polls
     * -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-15-2022
     */
    @When("^the user \"([^\"]*)\" action vote on random options$")
    public void actionVoteOnPoll(String username) throws InterruptedException {

        if (components.componentListButtonText("Vote again").size() != 0) {
            components.componentListButtonText("Vote again").get(0).click();
        }
        isComponentVisible.waitElement(By.xpath("//label"));
        int size = components.componentsListLabel().size();
        int randomPosition = isComponentVisible.randomNumber(size);
        components.componentsListLabel().get(randomPosition).click();
        String value = components.componentsListLabel().get(randomPosition).getText();
        components.componentButtonText("Vote").click();
        Thread.sleep(4000);
        if (components.componentsListDivMsg("vote").size() != 0) {
            components.componentsDivMsg("vote").click();
            Thread.sleep(3000);
            components.componentPText(value).click();
            assertTrue(components.componentLinkText(username).isDisplayed());
        } else {
            assertTrue(components.componentSpanName("1 vote").isDisplayed());
        }
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param divText is text of element
     * @purpose verify that element is not displayed
     * @Author baotg2
     * ---------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When("^the user don't see \"([^\"]*)\" displayed on screen$")
    public void isDivDisplayed(String divText) {
        assertEquals(0, components.componentsListDivMsg(divText).size());
    }

    /**
     * ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @purpose click on the div element has role is divText
     * @Author baotg2
     * ---------------------------------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When("^the user select location$")
    public void clickOnDiv(){
        WebElement element = new WebDriverWait(driver, Duration.ofSeconds(15)).until(ExpectedConditions.elementToBeClickable(Locator.byRole("tooltip")));
        element.click();
    }

    @When("^the user clicks on the \"([^\"]*)\" on page$")
    public void clickOnPText(String divText) {
        components.componentPText(divText).click();
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param user is name of the user
     * @purpose see the user interested/invited of events
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-15-2022
     */
    @When("^the user see \"([^\"]*)\" on tab$")
    public void verifyUserOnTabGuests(String user) {
        if (components.componentsListDivMsg(user).size() != 0) {
            assertTrue(components.componentsListDivMsg(user).get(0).isDisplayed());
        } else {
            assertTrue(components.componentDivDataTestID("itemUser").isDisplayed());
        }
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param linkText is value want to verify
     * @purpose see topic link text is displayed
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When("^the user clicks on element link text a \"([^\"]*)\"$")
    public void clickOnLinkText(String linkText) {
        isComponentVisible.waitElement(By.xpath("//a[text()='" + linkText + "']"));
        components.componentTextLink(linkText).click();
    }

//    /**
//     * -----------------------------------------------------------------------------------------------------------------------------------------
//     *
//     * @param titleText is value want to verify
//     * @purpose verify items displayed enough on profile
//     * @Author baotg2
//     * -----------------------------------------------------------------------------------------------------------------------------------------
//     * @since 27-07-2022
//     */
//    @When("^the user verify items \"([^\"]*)\" displayed on \"([^\"]*)\"$")
//    public void countItemsDisplayedSuccessfully(String titleText, String items) {
//        isComponentVisible.waitElement(By.xpath("//h4[@data-testid='\"+dataTestID+\"']/a"));
//        int size = components.componentListH4DataTestID(titleText).size();
//        components.componentSpanDataTestID("userAvatar").click();
//        components.componentsListElementByID(items).get(1).click();
//        assertEquals(components.componentListH4DataTestID(titleText).size(), size);
//    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @purpose scroll to end page
     * @Author baotg2
     * --------------------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 08-03-2022
     */
    @When("^the user want to scroll to the end of page")
    public void toScrollToEndOfPage() throws InterruptedException {
        scrollToEndPage();
        Thread.sleep(2000);
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @purpose scroll to up page
     * @Author baotg2
     * --------------------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 08-03-2022
     */
    @When("^the user want to scroll to the up of page")
    public void toScrollToUpOfPage() throws InterruptedException {
        scrollUpPage();
        Thread.sleep(250);
    }

    /**
     * -------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param item is id of button
     * @purpose access first blog on My Blog or All Blog
     * @Author baotg2
     * --------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When("the user clicks on {string}")
    public void the_user_click_on(String item) {
        WebElement element = waitUntilDisplayed(Locator.byTestId(item));
        assertTrue(element.isDisplayed());
        element.click();
    }

    /**
     * -------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param item is id of button
     * @purpose access first blog on My Blog or All Blog
     * @Author baotg2
     * --------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When("the user clicks on menu item {string}")
    public void the_user_click_on_menu_item(String item) {
        // assign current menu context to check every ok
        WebElement element = waitUntilDisplayed(Locator.byTestId(item));
        assertTrue(element.isDisplayed());
        element.click();
    }


    @When("the user types a sentence in {string}")
    public void theUserFillsInInput(String testId) {
        WebElement field = waitUntilDisplayed(Locator.byTestId(testId));
        field.clear();
        field.sendKeys(DataProvider.faker.lorem().sentence());
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param buttonName is name of button
     * @purpose handle click on button
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When("the user clicks on button \"([^\"]*)\"$")
    public void clickOnButton(String buttonName) {

        WebElement button = waitUntilDisplayed(Locator.byTestId("button", buttonName));

        assertTrue(button.isDisplayed());
        button.click();
    }

    @When("the user adds poll on feed")
    public void clickOnButtonTitle() {
        WebElement button = waitUntilDisplayed(Locator.byTitle("button", "Create Poll"));

        assertTrue(button.isDisplayed());
        button.click();
    }

    @When("the user opens the friend list")
    public void clickOnButton() throws InterruptedException {

        WebElement button = waitUntilDisplayed(Locator.byTitle("button", "Open"));

        assertTrue(button.isDisplayed());
        button.click();

        waitUntilDisplayed(Locator.byRole("presentation"));
        WebElement select_friend = waitUntilDisplayed(Locator.byRole("presentation"));
        Thread.sleep(3000);
        select_friend.sendKeys(Keys.DOWN);
        select_friend.sendKeys(Keys.DOWN);
        select_friend.sendKeys(Keys.ENTER);
    }
    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param name is value of field input
     * @purpose handle input value
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When("the user fills a paragraph in {string}")
    public void theUserFillsParagraphIn(String name) {
        WebElement element = new WebDriverWait(driver, Duration.ofSeconds(15)).until(ExpectedConditions.elementToBeClickable(Locator.byRole("text")));

        element.clear();
        element.sendKeys(DataProvider.faker.lorem().paragraph());
    }

    @When("the user adds a tag")
    public void theUserAddATag() {
        WebElement element = waitUntilDisplayed(Locator.byTestId("input", "inputTags"));
        element.clear();
        element.sendKeys(DataProvider.faker.lorem().word());
        element.sendKeys(Keys.ENTER);
    }

    @When("the user opens action menu")
    public void theUserOpensActionMenu() {
        WebElement button = waitUntilDisplayed(Locator.byTestId("button", "actionMenuButton"));
        assertTrue(button.isDisplayed());
        button.click();

        // the current within must be scoped to new context
        By menu = Locator.byTestId("div", "action menu");
        waitUntilDisplayed(menu);
        setMenuContext(menu);
    }

    @When("the user opens action menu by label")
    public void openActionMenuByLabel() {
        WebElement button = waitUntilDisplayed(Locator.byAriaLabel("ActionMenu"));
        assertTrue(button.isDisplayed());
        button.click();

        // the current within must be scoped to new context
        By menu = Locator.byTestId("div", "action menu");
        waitUntilDisplayed(menu);
        setMenuContext(menu);
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param status is content of message
     * @purpose verify message displayed success
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user sees (successful) flash message$")
    public void theUserSeeFlashMessage(String status) {
        WebElement flashMessage = waitUntilDisplayed(Locator.byTestId("flashMessage"));
        assertTrue(flashMessage.isDisplayed());
    }

    @When("the user accepts the confirm")
    public void theUserAcceptsTheConfirm() {
        By context = Locator.byTestId("popupConfirm");
        WebElement button = waitUntilDisplayed(context, Locator.byTestId("buttonSubmit"));

        assertTrue(button.isDisplayed());
        button.click();

        waitUntilInvisible(Locator.byTestId("popupConfirm"));
    }

    @When("the user rejects the confirm")
    public void theUserRejectTheConfirm() {
        WebElement button = waitUntilDisplayed(Locator.byTestId("buttonCancel"));

        assertTrue(button.isDisplayed());
        button.click();

        waitUntilInvisible(Locator.byTestId("popupConfirm"));
    }

    @When("the user submits the form")
    public void theUserSubmitsTheForm() {
        WebElement button = waitUntilDisplayed(Locator.byTestId("buttonSubmit"));
        assertTrue(button.isDisplayed());
        button.click();
    }

    @When("the user uploads new media files")
    public void theUserUploadsNewMediaFiles() {
        List<WebElement> button = driver.findElements(Locator.byTestId("button","buttonSubmit"));
        assertTrue(button.get(1).isDisplayed());
        button.get(1).click();
    }

    @When("^the user set privacy is (Everyone|Community|Friends|Friends of Friends|Only Me|Custom)$")
    public void theUserSetPrivacyIsFriend(@Nonnull String privacy) throws InterruptedException {
        WebElement element = waitUntilDisplayed(Locator.byTestId("fieldPrivacy"), Locator.byRole("button"));
        assertTrue(element.isDisplayed());
        element.click();

        WebElement menuitem = waitUntilDisplayed(Locator.byTestId("menuPrivacy"), Locator.byDataValue(Privacy.getValue(privacy)));
        assertTrue(menuitem.isDisplayed());
        menuitem.click();
        Thread.sleep(2000);
    }

    @And("the user adds description")
    public void theUserAddsDescription() {
        WebElement element = waitUntilDisplayed(Locator.byRole("textbox"));
        assertTrue(element.isDisplayed());
        element.sendKeys(DataProvider.faker.lorem().paragraph());
    }



    @When("the user adds title with value {string}")
    public void theUserAddsTitleWithValue(@Nonnull String text) {
        WebElement element = waitUntilDisplayed(Locator.byTestId("input", "inputTitle"));
        assertTrue(element.isDisplayed());
        element.clear();
        element.sendKeys(text);
    }

    @When("the user add on {string} with value {string}")
    public void theUserAddValue (String elementsID, String value){
        WebElement element = waitUntilDisplayed(Locator.byTestId(elementsID));
        assertTrue(element.isDisplayed());
        element.clear();
        element.sendKeys(value);
    }

    @When("the user fills URL Videos")
    public void theUserFillsURLVideos() throws InterruptedException {
        WebElement element = waitUntilDisplayed(Locator.byTestId("input", "inputVideoUrl"));
        assertTrue(element.isDisplayed());
        element.clear();
        element.sendKeys("https://www.youtube.com/watch?v=cA_cONblHyM");
        Thread.sleep(5000);
    }
    @When("the user adds on {string}")
    public void addOn(String id){
        WebElement element = waitUntilDisplayed(Locator.byId("input", id));
        assertTrue(element.isDisplayed());
        element.clear();
        element.sendKeys(DataProvider.faker.lorem().paragraph());
    }

    @When("the user adds title")
    public void theUserAddsTitle() {
        theUserAddsTitleWithValue(DataProvider.faker.lorem().sentence());
    }

    @When("^the user fills (firstName|lastName|fullName|userName)$")
    public void fillNames(String name){
        WebElement element;
        switch (name){
            case "firstName":
                element = waitUntilDisplayed(getSectionContext(), Locator.byTestId("inputFirstName"));
                element.clear();
                element.sendKeys("brian");
                break;
            case "lastName":
                element = waitUntilDisplayed(getSectionContext(), Locator.byTestId("inputLastName"));
                element.clear();
                element.sendKeys(DataProvider.faker.name().lastName());
                break;
            case "fullName":
                element = waitUntilDisplayed(getSectionContext(), Locator.byTestId("inputFullName"));
                element.clear();
                element.sendKeys(DataProvider.faker.name().fullName());
                break;
            case "userName":
                element = waitUntilDisplayed(getSectionContext(), Locator.byTestId("inputUserName"));
                element.clear();
                element.sendKeys(DataProvider.faker.name().firstName().replace(" ",""));
                break;
        }


    }

    @When("the user searches with text {string}")
    public void theUserSearchesWithValue(@Nonnull String value) {
        WebElement element = waitUntilDisplayed(getSectionContext(), Locator.byTestId("input", "searchBox"));
        assertTrue(element.isDisplayed());
        element.clear();
        element.sendKeys(value);
        element.sendKeys(Keys.ENTER);
    }

    @When("the user opens share menu")
    public void theUserOpensShareMenu() {
        WebElement button = waitUntilDisplayed(getSectionContext(), Locator.byTestId("button", "menuShareButton"));
        assertTrue(button.isDisplayed());
        // open menu
        button.click();
        setMenuContext(Locator.byTestId("div", "menuShare"));
    }

    @When("the user opens status composer")
    public void openStatusComposer() {
        WebElement element = waitUntilDisplayed(getSectionContext(), Locator.byTestId("div", "whatsHappening"));
        element.click();
    }

    @When("the user {string}")
    public void theUserAction(String actionName){
        WebElement element = waitUntilDisplayed(getSectionContext(), Locator.byText("button",actionName));
        assertTrue(element.isDisplayed());
        //click on
        element.click();
    }

    @And("the user adds a category")
    public void theUserAddsACategory() {
        WebElement element = waitUntilDisplayed(getSectionContext(), Locator.byTestId("input", "inputCategories"));
        element.click();
        element.sendKeys(Keys.ENTER);
    }

    @When("the user clicks on the item title")
    public void theUserClicksOnTheItemTitle(){
        WebElement element = waitUntilDisplayed(getSectionContext(), Locator.byTestId("itemTitle"), Locator.byTagName("a"));
        element.click();
    }

    @When("the user get media details")
    public void theUserClicksOnTheItemMedia(){
        WebElement element = waitUntilDisplayed(getSectionContext(), Locator.byTestId("itemPhoto"), Locator.byHref("/photo"));
        driver.get(element.getAttribute("href"));
    }

    @When("the user modified items")
    public void theUserActionOnOption(){
        WebElement element = waitUntilDisplayed(Locator.byRole("tooltip"), Locator.byRole("menuitem"));
        element.click();
    }
    @When( "^the user add comment \"([^\"]*)\" on items$" )
    public void addComment( String comment ) throws InterruptedException {
        isComponentVisible.waitElement(By.xpath("//div[@role ='combobox']"));
        if(components.componentListDivDataTestID("fieldStatus").size()!=0){
            driver.findElement(By.xpath("//div[@data-testid='fieldStatus']//div[@role ='combobox']")).sendKeys(comment);
        }
        else{
            components.componentDivRole("combobox").sendKeys(comment);
            components.componentDivRole("combobox").sendKeys(Keys.ENTER);
        }
    }

    @When("Admin approves the request")
    public void theUserWantToEdit() {
        WebElement element = waitUntilDisplayed(getSectionContext(), Locator.byTestId("itemview group_request"), Locator.byClass("span", "ico-check"));
        element.click();
    }

    @When("the owner invite to friend")
    public void theOwnerInviteToFriend() {
        WebElement button = waitUntilDisplayed(getSectionContext(), Locator.byAriaLabel("Action Menu"));
        assertTrue(button.isDisplayed());
        button.click();

        // the current within must be scoped to new context
        By menu = Locator.byTestId("div", "action menu");
        waitUntilDisplayed(menu);
        setMenuContext(menu);
    }

    @When("the user access user profile")
    public void theUserAccessUserProfile() {
        WebElement element = waitUntilDisplayed(getSectionContext(), Locator.byTestId("userAvatar"));
        assertTrue(element.isDisplayed());
        element.click();
    }

    @When("the user marks as read announcements")
    public void markAsReadAnnouncements(){
        WebElement element = waitUntilDisplayed(getSectionContext(), Locator.byId("Mark as read"));
        assertTrue(element.isDisplayed());
        element.click();

        waitUntilInvisible(getSectionContext(), Locator.byId("Announcements"));
    }

    @When("the user moves to tab {string}")
    public void theUserMovesToTab(String tab){
        WebElement element = waitUntilDisplayed(getSectionContext(), Locator.byId(tab));
        assertTrue(element.isDisplayed());
        element.click();
    }
}