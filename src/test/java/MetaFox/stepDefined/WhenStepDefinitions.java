package MetaFox.stepDefined;

import io.cucumber.java.en.And;
import io.cucumber.java.en.When;
import org.jetbrains.annotations.NotNull;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import MetaFox.browserConfig.Index;
import MetaFox.pageObject.Components;
import MetaFox.support.DataExecutor;
import MetaFox.support.IsComponentVisible;

import java.util.Objects;
import java.util.Random;

import static java.lang.Math.random;

/**
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 *
 * @version 1.0.1
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 * @Author baotg2
 * @purpose: WhenStepDefinitions is class defined all steps use Method @When
 * @since 04-05-2022
 */
public class WhenStepDefinitions {
    Components components = new Components( Index.getDriver() );
    IsComponentVisible isComponentVisible = new IsComponentVisible( Index.getDriver() );
    DataExecutor dataExecutor = new DataExecutor();

    /**------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param item item name
     * @param url link to page want to open
     * @purpose link to page on Side Menu
     * ------------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When ( "^the browser opened at item \"([^\"]*)\" and tab \"([^\"]*)\"$" )
    public void openNewURL( String item , String url ) {
        isComponentVisible.waitElement(By.xpath("//a[contains(@href, '" + item + "')]"));
        components.componentLinkText( item ).click();
        if ( !Objects.equals( url , "" ) ) {
            components.componentLinkText( url ).click();
        }
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param item link want to moved
     * @purpose moved to other page by href
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------------
     */
    @When ( "^the user want to click on \"([^\"]*)\"$" )
    public void accessNewPage( String item ) {
        isComponentVisible.waitElement( By.xpath( "//a[contains(@href, '" + item + "')]" ) );
        components.componentLinkText( item ).click();
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param item value behind url homepage
     * @purpose move to page has format homepgarUrl/item
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When ( "^the move to page \"([^\"]*)\"$" )
    public void openNewPage( String item ) {
        Index.getDriver().get( dataExecutor.readConstants("URL") + item);
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------------
     * @purpose move to previous page
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When ( "^back to previous page" )
    public void backToPreviousPage() {
        Index.getDriver().navigate().back();
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param placeHolder style of field sign up
     * @param value input
     * @purpose input value of email form
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When ( "^the user input info sign up \"([^\"]*)\" with value \"([^\"]*)\"$" )
    public void valueEmailSignUp( String placeHolder , String value ) {
        components.componentSearchAttributes( placeHolder ).sendKeys( value );
        components.componentSearchAttributes( placeHolder ).sendKeys( Keys.ENTER );
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param value of tool tip
     * @purpose access tool tip on user profile from more
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @When ( "^the user want access tool tip \"([^\"]*)\" from More")
    public void accessToolTip(String value){
        components.componentTooltip(value).click();
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param value is value want to input
     * @param element is element on web page
     * @purpose add value on TextArea
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-02-2022
     */
    @When("^the user add value \"([^\"]*)\" on textArea \"([^\"]*)\"$")
    public void addContent(String value, String element){
        isComponentVisible.waitElement(By.xpath("//textarea[@data-testid ='" + element +"']"));
        components.componentTextAreaDataTestID(element).clear();
        components.componentTextAreaDataTestID(element).sendKeys(value);
    }

    /**------------------------------------------------------------------------------------------------------------------------------------
     * @purpose the user want to change cover image
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-15-2022
     */
    @When("^the user want to changed cover image")
    public void changeCOverImage(){
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='upload_photo']"));
        components.componentDivDataTestID("upload_photo").click();
        dataExecutor.uploadFile(dataExecutor.getRandomPathDocuments().replace( "\\\\" , "\\" ));
    }

    /**
     *
     * @param index is index of element on dropdown list
     * @purpose select elements on dropdown list has position index
     */
    @When("the user want to select category at {int} on dropdown list {string}")
    public void selectCategory(int index, String dropdown_listName){
        for (int i = 0; i< index; i++){
            components.componentInputID(dropdown_listName).sendKeys(Keys.DOWN);
        }
        components.componentInputID(dropdown_listName).sendKeys(Keys.ENTER);
    }

    @When("^the user see \"([^\"]*)\" and click on$")
    public void clickOnActionMenu(String actionName){
        components.componentsActionButton(actionName).click();
    }

    @When("^the user select type \"([^\"]*)\" on \"([^\"]*)\"$")
    public void selectTypeOnField(@NotNull String type, String id){
        isComponentVisible.waitElement(By.id(id));
        components.componentsListDivRole("button").get(0).click();
        switch (type){
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

    @When("^the user click on notification \"([^\"]*)\" and process$")
    public void findAndSelectNotifications(String notification) throws InterruptedException {
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='itemSummary']"));
        int temp = components.componentListDivDataTestID("itemSummary").size();
        for(int i = 0; i < temp; i ++){
            if (components.componentListDivDataTestID("itemSummary").get(i).getText().contains(notification)){
                components.componentListDivDataTestID("itemSummary").get(i).click();
            }
        }
    }

    @When("^the user tag first friend on list tag$")
    public void tagFirstFriendOnList() throws InterruptedException {
        Thread.sleep(6000);
        isComponentVisible.waitElement(By.xpath("//h5[@data-testid='itemTitle']"));
        if( components.listH5DataTestID("itemTitle").isDisplayed()){
           components.listH5DataTestID("itemTitle").click();
           components.listH5DataTestID("itemTitle").click();
        }
        else {
            components.componentsDivMsg("No people found").isDisplayed();
        }
    }

    @When("^the user \"([^\"]*)\" on invite$")
    public void actionOnInvite(String actionInvite){
        isComponentVisible.waitElement(By.xpath("//h5[text()='"+actionInvite+"']"));
        components.h5Text(actionInvite).click();
    }
}