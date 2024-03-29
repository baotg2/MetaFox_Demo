package metafox.stepdefs;

import io.cucumber.java.en.And;
import io.cucumber.java.en.When;
import metafox.support.DataProvider;
import metafox.support.Locator;
import metafox.support.Privacy;
import metafox.support.Utility;
import org.openqa.selenium.*;
import org.openqa.selenium.remote.LocalFileDetector;
import org.openqa.selenium.remote.RemoteWebElement;

import javax.annotation.Nonnull;
import java.util.List;

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
public class AndSteps extends StepDefinitions {
    public AndSteps() throws InterruptedException {
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @param itemName is menu's name
     * @Author baotg2
     * @purpose: Return latest image's id before upload
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user verify \"([^\"]*)\" before upload$")
    public Integer getNumberOfLastImage(String itemName) {
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='" + itemName + "']//a"));
        List<WebElement> listElementImage = driver.findElements(By.xpath("//div[@data-testid='" + itemName + "']//a"));
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
        driver.navigate().refresh();
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='" + itemName + "']//a"));
        List<WebElement> listElementImage = driver.findElements(By.xpath("//div[@data-testid='" + itemName + "']//a"));
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
     * -------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param itemName is id of div element
     * @Author baotg2
     * @purpose: click and access "edit, report, delete" from main contain
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user clicks on div \"([^\"]*)\" and process")
    public void accessBlogOnSearchResult(String itemName) throws InterruptedException {
        Thread.sleep(5000);
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='" + itemName + "']"));
        driver.findElement(By.xpath("//div[@data-testid='" + itemName + "']")).click();
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param reactionName is id of span element
     * @Author baotg2
     * @purpose: the user sees result after reaction
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
     * @purpose: the user sees photo of who want to delete photo
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("the user see item of \"([^\"]*)\"$")
    public void isSeePhoto(String buttonName) throws InterruptedException {
        isComponentVisible.waitElement(By.xpath("//div[text()='" + buttonName + "']"));
        components.componentsDivMsg(buttonName).click();
        Thread.sleep(3000);
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param buttonName is id of div element
     * @Author baotg2
     * @purpose: the user sees photo of who want to delete photo
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("the user see element div item of \"([^\"]*)\"$")
    public void isSeeDivElement(String buttonName) throws InterruptedException {
        isComponentVisible.waitElement(By.xpath("//div[text()='" + buttonName + "']"));
        Thread.sleep(2000);
        components.componentsListDivMsg(buttonName).get(1).click();
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
    @And("the user clicks on button \"([^\"]*)\" to action$")
    public void clickOnButtonAction(String buttonName) {
        isComponentVisible.waitElement(By.xpath("//div[@class ='ltr-77ogkp']/button[@data-testid='" + buttonName + "']"));
        components.componentButtonAction(buttonName).click();
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
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
        for (int i = 0; i < components.componentsSpanList().size(); i++) {
            if (components.componentsSpanList().get(i).getText().contains(fieldSetting)) {
                if (!components.componentsListDivRole("button").get(i - 11).getText().equals(valueChanged)) {
                    components.componentsListDivRole("button").get(i - 11).click();
                    isComponentVisible.waitElement(By.xpath("//ul[@role = 'listbox']"));
                    switch (valueChanged) {
                        case "Anyone":
                        case "Everyone":
                            components.componentsDivDataValue("0").click();
                            break;
                        case "Friends Only":
                        case "Friends":
                            components.componentsDivDataValue("2").click();
                            break;
                        case "No One":
                        case "Only Me":
                            components.componentsDivDataValue("4").click();
                            break;
                        case "Friends of Friends":
                            components.componentsDivDataValue("3").click();
                            break;
                        case "Community":
                            components.componentsDivDataValue("1").click();
                    }
                }
                break;
            }
        }
    }

    @And("^the user changes permissions \"([^\"]*)\" to \"([^\"]*)\"$")
    public void setPrivacyOnGroup(String permission, String newPrivacy){
        isComponentVisible.waitElement(By.xpath("//div[@role ='button']"));
        for (int i = 0; i < components.componentsSpanList().size(); i++) {
            if (components.componentsSpanList().get(i).getText().contains(permission)) {
                if (!components.componentsListDivRole("button").get(i - 4).getText().equals(newPrivacy)) {
                    components.componentsListDivRole("button").get(i - 4).click();
                    isComponentVisible.waitElement(By.xpath("//ul[@role = 'listbox']"));
                    switch (newPrivacy) {
                        case "Members Only":
                           WebElement elementMember= waitUntilDisplayed(Locator.byRole("presentation"),Locator.byDataValue(Privacy.getPrivacy(newPrivacy)));
                           assertTrue(elementMember.isDisplayed());
                            elementMember.click();
                        case "Admins Only":
                            WebElement elementAdmin= waitUntilDisplayed(Locator.byRole("presentation"),Locator.byDataValue(Privacy.getPrivacy(newPrivacy)));
                            assertTrue(elementAdmin.isDisplayed());
                            elementAdmin.click();
                    }
                }
            }
        }
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param itemProfile name's user
     * @purpose access the user profile has itemProfile
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user want to access items \"([^\"]*)\" on user profile")
    public void accessItemONProFile(String itemProfile) {
        isComponentVisible.waitElement(By.xpath("//*[@id='" + itemProfile + "']"));
        components.componentsListElementByID(itemProfile).get(1).click();

    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param itemProfile name's user
     * @purpose access the user profile has itemProfile
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user don't see tab \"([^\"]*)\" on user profile")
    public void dontSeeItemONProFile(String itemProfile) {
        assertEquals(0, components.componentsListElementByID(itemProfile).size());
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param whatsHappening this is name of element poss on wall
     * @purpose don't see field poss on wall when this setting is "No One"
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user don't see \"([^\"]*)\"")
    public void isSearchFormDisplayed(String whatsHappening) throws InterruptedException {
        assertEquals(components.componentListDivDataTestID(whatsHappening).size(), 0);
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param spanText this is value of span
     * @purpose access all items on menuAccount
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^I want to click on \"([^\"]*)\"$")
    public void logout(String spanText) throws InterruptedException {
        Thread.sleep(3000);
        isComponentVisible.waitElement(By.xpath("//div[@data-testid ='menuAppBar']/div[5]/div"));
        driver.findElement(By.xpath("//div[@data-testid ='menuAppBar']/div[5]/div")).click();
        isComponentVisible.waitElement(By.xpath("//span[text()='" + spanText + "']"));
        components.componentSpanName(spanText).click();
    }

    /**
     * -------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param status has 2 type want | don't
     * @purpose handle upload document on test case want to
     * @Author baotg2
     * -------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user (want to|don't) add photo$")
    public void the_user_want_to_add_photos(String status) {
        if (status.equals("want to")) {
            if (!Utility.isLocal(driver)) {
                WebElement upload = components.componentInputDataTestID("inputFile");
                ((RemoteWebElement) upload).setFileDetector(new LocalFileDetector());
                upload.sendKeys(DataProvider.getSinglePhoto());
            } else {
                components.componentInputDataTestID("inputFile").sendKeys(DataProvider.getSinglePhoto());
            }
        }
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @purpose handle on case upload attachment
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When("^the user attaches a (photo|video)")
    public void actionAttachFile(@Nonnull String folder) {
        if (!Utility.isLocal(driver)) {
            WebElement upload = components.componentInputDataTestID("inputAttachments");
            ((RemoteWebElement) upload).setFileDetector(new LocalFileDetector());
            upload.sendKeys(DataProvider.getFile(folder));
        } else {
            components.componentInputDataTestID("inputAttachments").sendKeys(DataProvider.getFile(folder));
        }
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param value is value of tag
     * @param id    is id of element
     * @purpose input tag when create/edit item
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("the user add value on \"([^\"]*)\" is \"([^\"]*)\"$")
    public void actionOnTopicField(String id, String value) throws InterruptedException {
        isComponentVisible.waitElement(By.id(id));
        components.componentInputID(id).clear();
        components.componentInputID(id).sendKeys(value);
        components.componentInputID(id).sendKeys(Keys.ENTER);
    }

    /**
     * --------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param id    is id of element
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

    /**
     * --------------------------------------------------------------------------------------------------------------------------------------
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
        isComponentVisible.waitElement(By.xpath("//input[(contains(@id,':r'))]"));
        components.componentInputContainsID(":r").get(index).click();
        components.componentInputContainsID(":r").get(index).sendKeys(value);
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------
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

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
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
     * @param itemName is blog item
     */
    @And("^the user access this blog by \"([^\"]*)\" and process")
    public void accessBlogOnSearchResultByLInkText(String itemName) {
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='" + itemName + "']"));
        components.componentDivDataTestID(itemName).click();
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param typeName is "Check Box" type
     * @purpose click on check box on sign up form
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("the user clicks on check box {string}")
    public void theUserClickOnCheckOn(String typeName) {
        if (!components.componentInputType(typeName).isSelected()) {
            components.componentInputType(typeName).click();
        }
    }

    /**
     * -------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param actionName is action name
     * @purpose click on action menu
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user want to \"([^\"]*)\"$")
    public void clickOnButtonText(String actionName) throws InterruptedException {
        isComponentVisible.waitElement(By.xpath("//button[contains(text(),'" + actionName +"')]"));
        components.componentButtonText(actionName).click();
        Thread.sleep(2000);
    }

    /**
     * -------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param date is date of the user input
     * @purpose input on date input mm/dd/yyyy
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 07-05-2022
     */
    @And("^the user want to add new date is \"([^\"]*)\"$")
    public void addNewDate(String date) {
        isComponentVisible.waitElement(By.xpath("//button[contains(@aria-label,'Choose date')]"));
        components.componentsListTagButton("Choose date").get(1).click();
        components.componentButtonText(date).click();
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @purpose refers page before handle another action
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("the user want to refresh page before handle the action")
    public void theUserWantToRefreshPageBeforeHandleTheAction() throws InterruptedException {
        Thread.sleep(3000);
        driver.navigate().refresh();
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param valueVerify is true to verify
     * @purpose verify message on search result
     * ----------------------------------------------------------------------------------------------------------------------------
     * @Author baotg2
     * @see 04-05-2022
     */
    @And("^the user see \"([^\"]*)\" displayed on search results$")
    public void theUserWantToDisplayDisplayedOnSearchResults(String valueVerify) {
        isComponentVisible.waitElement(By.className("ltr-1h3jlzl"));
        assertEquals(components.componentsListByClassName("ltr-1h3jlzl").get(0).getText(), valueVerify);
    }


    @And("^the user clicks on input type check box \"([^\"]*)\"$")
    public void theUserClickOnInputTypeCheckBox(String inputName) {
        isComponentVisible.waitElement(By.xpath("//input[@name='" + inputName + "']"));
        if (!components.componentInputName(inputName).isSelected()) {
            components.componentInputName(inputName).click();
        }
    }

    /**
     * --------------------------------------------------------------------------------------------------------------------------------
     *
     * @param commentType is type of element want to put on comment
     * @purpose select random sticker on comment
     * @Author baotg2
     * --------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @And("^the user put a \"([^\"]*)\" sticker on comments$")
    public void putStickerOnComments(String commentType) {
        isComponentVisible.waitElement(By.xpath("//li[@data-testid='" + commentType + "']"));
        components.componentLi(commentType).click();
    }
}