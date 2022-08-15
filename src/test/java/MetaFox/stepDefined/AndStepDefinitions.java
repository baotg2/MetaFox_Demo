package MetaFox.stepDefined;

import MetaFox.browserConfig.Index;
import MetaFox.pageObject.Components;
import MetaFox.support.DataExecutor;
import MetaFox.support.IsComponentVisible;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.jetbrains.annotations.NotNull;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.LocalFileDetector;
import org.openqa.selenium.remote.RemoteWebElement;

import java.util.List;

import static MetaFox.browserConfig.Index.driver;
import static MetaFox.browserConfig.Index.selectPlatform;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 *
 * @version 1.0.1
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 * @Author baotg2
 * @purpose: AndStepDefinitions is class defined all steps use Method @And
 * @since 04-05-2022
 */
public class AndStepDefinitions {
    IsComponentVisible isComponentVisible = new IsComponentVisible(Index.getDriver());
    Components components = new Components(Index.getDriver());
    DataExecutor dataExecutor = new DataExecutor();
    Integer idOfLastImageBeforeUpload;

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param menuItemName is menu's name
     * @Author baotg2
     * @purpose: Verify element visible on left menu
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user see \"([^\"]*)\" on left menu$")
    public void isChildMenuItemDisplayed(String menuItemName) {
        isComponentVisible.waitElement(By.xpath("//span[text()='" + menuItemName + "']"));
        assertTrue(components.componentSpanName(menuItemName).isDisplayed());
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param itemName is menu's name
     * @Author baotg2
     * @purpose: Return latest image's id before upload
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user verify \"([^\"]*)\" before upload$")
    public Integer getNumberOfLastImage(String itemName) {
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='" + itemName + "']//a"));
        List<WebElement> listElementImage = Index.getDriver().findElements(By.xpath("//div[@data-testid='" + itemName + "']//a"));
        int index = listElementImage.get(0).getAttribute("href").lastIndexOf('/');
        String lastString = listElementImage.get(0).getAttribute("href").substring(index + 1);
        idOfLastImageBeforeUpload = Integer.valueOf(lastString);
        return idOfLastImageBeforeUpload;
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param itemName is menu's name
     * @Author baotg2
     * @purpose: Return latest image's id after upload
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user verify \"([^\"]*)\" after upload$")
    public boolean isUploadSuccess(String itemName) {
        Index.getDriver().navigate().refresh();
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='" + itemName + "']//a"));
        List<WebElement> listElementImage = Index.getDriver().findElements(By.xpath("//div[@data-testid='" + itemName + "']//a"));
        int index = listElementImage.get(0).getAttribute("href").lastIndexOf('/');
        String lastString = listElementImage.get(0).getAttribute("href").substring(index + 1);
        int idImageUploaded = Integer.parseInt(lastString);
        boolean ass = false;
        if (idImageUploaded > idOfLastImageBeforeUpload) {
            ass = true;
        }
        return ass;
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param pageMove is id of icon MetaFox
     * @Author baotg2
     * @purpose: Back to HomePage
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user back to \"([^\"]*)\" page$")
    public void isBackToHomePage(String pageMove) throws InterruptedException {
        Thread.sleep(3000);
        isComponentVisible.waitElement(By.xpath("//a[@data-testid='" + pageMove + "']"));
        components.componentLinkDataTestID(pageMove).click();
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param titleName is title of element
     * @Author baotg2
     * @purpose: verify title displayed correct with expected
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user see title \"([^\"]*)\" is displayed")
    public void isTitleDisplayed(String titleName) {
        isComponentVisible.waitElement(By.xpath("//h1[text()='" + titleName + "']"));
        assertTrue(components.componentH1ItemTitle(titleName).isDisplayed());
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param titleName is title of element
     * @Author baotg2
     * @purpose: verify title displayed correct with expected
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user see title h2 \"([^\"]*)\" is displayed")
    public void isTitleH2Displayed(String titleName) {
        isComponentVisible.waitElement(By.xpath("//h2[text()='" + titleName + "']"));
        assertTrue(components.componentH2ItemTitle(titleName).isDisplayed());
    }

    /**
     * -------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param itemName is id of div element
     * @Author baotg2
     * @purpose: click and access "edit, report, delete" from main contain
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user click on div \"([^\"]*)\" and process")
    public void accessBlogOnSearchResult(String itemName) throws InterruptedException {
        Thread.sleep(2000);
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='" + itemName + "']"));
        Index.getDriver().findElement(By.xpath("//div[@data-testid='" + itemName + "']")).click();
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param reactionName is id of span element
     * @Author baotg2
     * @purpose: the user see result after reaction
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user see result of \"([^\"]*)\" displayed")
    public void isReactionSuccess(String reactionName) {
        isComponentVisible.waitElement(By.xpath("//span[@data-testid='" + reactionName + "']"));
        assertTrue(components.componentSpanDataTestIDImage(reactionName).isDisplayed());
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param buttonName is id of div element
     * @Author baotg2
     * @purpose: the user see photo of who want to delete photo
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("the user see item of \"([^\"]*)\"$")
    public void isSeePhoto(String buttonName) {
        isComponentVisible.waitElement(By.xpath("//div[text()='" + buttonName + "']"));
        components.componentsDivMsg(buttonName).click();
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param buttonName is id of div element
     * @Author baotg2
     * @purpose: click and access "edit, report, delete" on items in detail page
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("the user click on button \"([^\"]*)\" to action$")
    public void clickOnButtonAction(String buttonName) {
        isComponentVisible.waitElement(By.xpath("//div[@class ='ltr-77ogkp']/button[@data-testid='" + buttonName + "']"));
        components.componentButtonAction(buttonName).click();
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param fieldSetting get attribute on profile setting
     * @param valueChanged the new privacy on this attribute
     * @Author baotg2
     * @purpose change the privacy on field to valueChanged
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("the user select privacy at field \"([^\"]*)\" and change to \"([^\"]*)\"$")
    public void selectPrivacy(String fieldSetting, String valueChanged) {
        isComponentVisible.waitElement(By.xpath("//div[@role ='button']"));
        int size = components.componentsSpanList().size();
        for ( int i = 0 ; i < components.componentsSpanList().size(); i++) {
            if (components.componentsSpanList().get(i).getText().contains(fieldSetting)) {
                String tec = components.componentsSpanList().get(i).getText();
                if (!components.componentsListDivRole("button").get(i-7).getText().equals(valueChanged)) {
                    components.componentsListDivRole("button").get(i-7).click();
                    isComponentVisible.waitElement(By.xpath("//ul[@role = 'listbox']"));
                    switch(valueChanged){
                        case "Anyone":
                        case "Everyone":
                            components.componentsDivDataValue("0").click();
                            break;
                        case "Friends Only":
                        case "Friends":
                            components.componentsDivDataValue("1").click();
                            break;
                        case "No One":
                        case "Only Me":
                            components.componentsDivDataValue("3").click();
                            break;
                        case "Friends of Friends":
                            components.componentsDivDataValue("2").click();
                            break;
                    }
                }
                break;
            }
        }
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param itemProfile name's user
     * @purpose access the user profile has itemProfile
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user want to access items \"([^\"]*)\" on user profile")
    public void accessItemONProFile(String itemProfile) {
        isComponentVisible.waitElement(By.xpath("//*[@id='"+itemProfile+"']"));
        components.componentsListElementByID(itemProfile).get(1).click();

    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param itemProfile name's user
     * @purpose access the user profile has itemProfile
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user don't see tab \"([^\"]*)\" on user profile")
    public boolean dontSeeItemONProFile(String itemProfile) {
        boolean isItemDisplay = false;
        isComponentVisible.waitElement(By.xpath("//*[@id='"+itemProfile+"']"));
        if(components.componentsListElementByID(itemProfile).size() == 0){
            isItemDisplay = true;
        }
        return isItemDisplay;
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param whatsHappening this is name of element poss on wall
     * @purpose don't see field poss on wall when this setting is "No One"
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user don't see \"([^\"]*)\" is displayed")
    public void isSearchFormDisplayed(String whatsHappening) {
        assertEquals(components.componentListDivDataTestID(whatsHappening).size(), 0);
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param spanText this is value of span
     * @purpose access all items on menuAccount
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^I want to click on \"([^\"]*)\"$")
    public void logout(String spanText) throws InterruptedException {
        Thread.sleep(2000);
        isComponentVisible.waitElement(By.xpath("//div[@data-testid ='menuAppBar']/div[5]/div"));
        driver.findElement(By.xpath("//div[@data-testid ='menuAppBar']/div[5]/div")).click();
        isComponentVisible.waitElement(By.xpath("//span[text()='" + spanText + "']"));
        components.componentSpanName(spanText).click();
    }

    /**-------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param actionName is action name on user profile
     * @purpose click action on user profile
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------------
     */
    @And("^the user action on \"([^\"]*)\"$")
    public void msgDisplay(String actionName) {
        isComponentVisible.waitElement(By.xpath("//span[text()='" + actionName + "']"));
        components.componentSpanName(actionName).click();
    }

    /**-------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param status has 2 type want | don't
     * @purpose handle upload document on test case want to
     * @Author baotg2
     * -------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user (want to|don't) add photo$")
    public void actionAttachImage(String status) {
        if (status.equals("want to")) {
            if (selectPlatform.equals("BROWSERSTACK")) {
                WebElement upload = components.componentInputDataTestID("inputFile");
                ((RemoteWebElement) upload).setFileDetector(new LocalFileDetector());
                upload.sendKeys(dataExecutor.getRandomPathDocuments());
            } else {
                components.componentInputDataTestID("inputFile").sendKeys(dataExecutor.getRandomPathDocuments());
            }
        }
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param fieldName is value of field input
     * @purpose handle input value
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("the user add value on div \"([^\"]*)\"$")
    public void inputValueOnDiv(String fieldName) throws InterruptedException {
        Thread.sleep(2000);
        components.componentDivRole(fieldName).sendKeys(dataExecutor.readConstants("Description"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param buttonName is name of button
     * @purpose handle click on button
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("the user click on button \"([^\"]*)\"$")
    public void clickOnButton(String buttonName) throws InterruptedException {
        isComponentVisible.waitElement(By.xpath("//button[@data-testid ='" + buttonName + "']"));
        components.componentButtonDataTestID(buttonName).click();
        Thread.sleep(3000);
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param msg is content of message
     * @purpose verify message displayed success
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("the user see message \"([^\"]*)\" displayed$")
    public void isMsgCreateSuccessDisplayed(String msg) {
        isComponentVisible.waitElement(By.xpath("//div[text()='" + msg + "']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param status has 2 option want|don't
     * @purpose handle on case upload attachment
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user (want to|don't) add attach files$")
    public void actionAttachFile(@NotNull String status) {
        if (status.equals("want to")) {
            if (selectPlatform.equals("BROWSERSTACK")) {
                WebElement upload = components.componentInputDataTestID("inputAttachments");
                ((RemoteWebElement) upload).setFileDetector(new LocalFileDetector());
                upload.sendKeys(dataExecutor.getRandomPathDocuments());
            } else {
                components.componentInputDataTestID("inputAttachments").sendKeys(dataExecutor.getRandomPathDocuments());
            }
        }
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param value value of Categories
     * @purpose add categories when create/edit item
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("the user want add categories is \"([^\"]*)\"$")
    public void actionOnCategoriesFiled(String value) {
        components.componentInputDataTestID("inputCategories").sendKeys(value);
        components.componentInputDataTestID("inputCategories").sendKeys(Keys.ENTER);
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param value is value of tag
     * @param id is id of element
     * @purpose input tag when create/edit item
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("the user add value on \"([^\"]*)\" is \"([^\"]*)\"$")
    public void actionOnTopicField(String id, String value) {
        isComponentVisible.waitElement(By.id(id));
        components.componentInputID(id).clear();
        components.componentInputID(id).sendKeys(value);
        components.componentInputID(id).sendKeys(Keys.ENTER);
    }

    /**--------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param id is id of element
     * @param value is value input from keyboard
     * @purpose input value on element has id
     * @Author baotg2
     * --------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-28-2022
     */
    @And("^the user add value on id \"([^\"]*)\" is \"([^\"]*)\"")
    public void inputValueOnElementsByID(String id, String value) {
        isComponentVisible.waitElement(By.id(id));
        components.componentsListElementByID(id).get(0).click();
        components.componentsListElementByID(id).get(0).sendKeys(value);
    }

    /**--------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param index is id of element
     * @param value is value input from keyboard
     * @purpose input value on element has id
     * @Author baotg2
     * --------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-28-2022
     */
    @And("^the user add value \"([^\"]*)\" on element \"([^\"]*)\"$")
    public void inputByContainsID(String value, int index) {
        isComponentVisible.waitElement(By.xpath("//input[(contains(@id,'mui-'))]"));
        components.componentInputContainsID("mui-").get(index).click();
        components.componentInputContainsID("mui-").get(index).sendKeys(value);
    }

    /**-------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param myBlogs title on main contain
     * @purpose see title like Feature, Popular on main contain
     * @Author baotg2
     * -------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user see \"([^\"]*)\" is displayed$")
    public void myBlogIsDisplayed(String myBlogs) {
        isComponentVisible.waitElement(By.xpath("//h2[text()='" + myBlogs + "']"));
        assertEquals(Index.getDriver().findElement(By.xpath("//h2[text()='" + myBlogs + "']")).getText(), myBlogs);
    }

    /**-------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param buttonTestDataID is id of button
     * @purpose access first blog on My Blog or All Blog
     * @Author baotg2
     *--------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user click on \"([^\"]*)\" to access blog$")
    public void accessFirstBlog(String buttonTestDataID) {
        isComponentVisible.waitElement(By.xpath("//button[@data-testid='" + buttonTestDataID + "']"));
        components.componentListButtonDataTestID(buttonTestDataID).get(0).click();
    }

    /**------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param action action's name
     * @purpose access action at main form like 'edit, delete, report'
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user \"([^\"]*)\" this item")
    public void accessActionOnMainForm(String action) throws InterruptedException {
        Thread.sleep(3000);
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='" + action + "']"));
        components.componentDivDataTestID(action).click();
    }

    /**------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param divID is data-testid of div
     * @param value is value input
     * @purpose input value on divID
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 07-06-2022
     */
    @And("^the user want to input value \"([^\"]*)\" on div \"([^\"]*)\"")
    public void inputOnDiv(String value, String divID) {
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='" + divID + "']"));
        Index.driver.findElements(By.xpath("//div[contains(text(),'happening')]")).get(1).sendKeys(value);
    }

    /**------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param status is status of message want to verify
     * @param msgText content of mesage
     * @purpose verify message display, if not > noResultFound is displayed
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user (see|not see) \"([^\"]*)\" is displayed on result table$")
    public void isSeeMsgText(String status, String msgText) {
        if (status.equals("see")) {
            isComponentVisible.waitElement(By.xpath("//div[@data-testid='noResultFound']"));
            assertEquals(components.componentDivDataTestID("noResultFound").getText(), msgText);
        } else {
            isComponentVisible.waitElement(By.xpath("//div[@data-testid='itemText']"));
            assertTrue(components.componentDivDataTestID("itemText").isDisplayed());
        }
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param conditionName condition name on search filter
     * @purpose access first condition on search filter
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("the user access first condition \"([^\"]*)\"$")
    public void accessFirstCondition(String conditionName) {
        isComponentVisible.waitElement(By.xpath("//input[@data-testid='" + conditionName + "']"));
        components.componentInputDataTestID(conditionName).click();
        components.componentInputDataTestID(conditionName).sendKeys(Keys.ENTER);
    }

    /**
     *
     * @param itemName is blog item
     */
    @And("^the user access this blog by \"([^\"]*)\" and process")
    public void accessBlogOnSearchResultByLInkText(String itemName) {
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='" + itemName + "']"));
        components.componentDivDataTestID(itemName).click();
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param idPassWord is id of passWordField
     * @param passWordInput value of PassWord
     * @purpose find field password and input value on Sign Up form
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("the user input info password sign up {string} with value {string}")
    public void theUserInputInfoPasswordSignUpWithValue(String idPassWord, String passWordInput) {
        components.componentInputID(idPassWord).clear();
        components.componentInputID(idPassWord).sendKeys(passWordInput);
        components.componentInputID(idPassWord).sendKeys(Keys.ENTER);
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param typeName is "Check Box" type
     * @purpose click on check box on sign up form
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("the user click on check box {string}")
    public void theUserClickOnCheckOn(String typeName) {
        if(!components.componentInputType(typeName).isSelected()) {
            components.componentInputType(typeName).click();
        }
    }

    /**-------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param actionName is action name
     * @purpose click on action on action menu
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user want to \"([^\"]*)\"$")
    public void clickOnButtonText(String actionName) {
        isComponentVisible.waitElement(By.xpath("//button[text()='" + actionName + "']"));
        components.componentButtonText(actionName).click();
    }

    /**-------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param date is date of the user input
     * @purpose input on date input mm/dd/yyyy
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 07-05-2022
     */
    @And("^the user want to add new date is \"([^\"]*)\"$")
    public void addNewDate(String date){
        isComponentVisible.waitElement(By.xpath("//input[@placeholder='mm/dd/yyyy']"));
        components.componentListSearchAttributes("mm/dd/yyyy").get(1).clear();
        components.componentListSearchAttributes("mm/dd/yyyy").get(1).sendKeys(date);
    }

    /**------------------------------------------------------------------------------------------------------------------------------------------------
     * @purpose refers page before handle another action
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("the user want to refresh page before handle the action")
    public void theUserWantToRefreshPageBeforeHandleTheAction() throws InterruptedException {
        Thread.sleep(3000);
        Index.getDriver().navigate().refresh();
    }

    /**------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param valueVerify is true to verify
     * @purpose
     */
    @And("^the user see \"([^\"]*)\" displayed on search results$")
    public void theUserWantToDisplayDisplayedOnSearchResults(String valueVerify){
        isComponentVisible.waitElement(By.className("ltr-1h3jlzl"));
        assertEquals(components.componentsListByClassName("ltr-1h3jlzl").get(0).getText(), valueVerify);
    }

    @And("^the user click on input type check box \"([^\"]*)\"$")
    public void theUserClickOnInputTypeCheckBox(String inputName) {
        isComponentVisible.waitElement(By.xpath("//input[@name='" + inputName + "']"));
        if(!components.componentInputName(inputName).isSelected()){
            components.componentInputName(inputName).click();
        }
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param ariaLabel is value ariaLabel of button
     * @purpose is click to action tag user on photo
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Then("^the user///")
    public void ListStartTagUser(String ariaLabel)
    {
        isComponentVisible.waitElement(By.xpath("//button[@aria-label ='"+ariaLabel+"']"));
        components.componentsListTagButton(ariaLabel).get(1).click();
    }
}