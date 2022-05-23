package MetaFox.stepDefined;

import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import MetaFox.conf.Index;
import MetaFox.pageObject.Components;
import MetaFox.support.DataExecutor;
import MetaFox.support.IsComponentVisible;

import java.util.Objects;

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
}