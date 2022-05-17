package pHpFox.stepDefined;

import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import pHpFox.conf.Index;
import pHpFox.pageObject.Components;
import pHpFox.support.IsComponentVisible;

import java.util.Objects;

public class WhenStepDefinitions {
    Components components = new Components( Index.getDriver() );
    IsComponentVisible isComponentVisible = new IsComponentVisible( Index.getDriver() );


    @When ( "^the browser opened at item \"([^\"]*)\" and tab \"([^\"]*)\"$" )
    public void openNewURL( String item , String url ) {
        components.componentLinkText( item ).click();
        if ( !Objects.equals( url , "" ) ) {
            components.componentLinkText( url ).click();
        }
    }

    @When ( "^the user want to click on \"([^\"]*)\"$" )
    public void accessNewPage( String item ) {
        isComponentVisible.waitElement( By.xpath( "//a[contains(@href, '" + item + "')]" ) );
        components.componentLinkText( item ).click();
    }

    @When ( "^the move to page \"([^\"]*)\"$" )
    public void openNewPage( String item ) {
        Index.getDriver().get( "https://preview-foxsocial.phpfox.us/" + item + "" );
    }

    @When ( "^back to previous page" )
    public void backToPreviousPage() {
        Index.getDriver().navigate().back();
    }

    @When ( "^the user input info sign up \"([^\"]*)\" with value \"([^\"]*)\"$" )
    public void valueEmailSignUp( String placeHolder , String value ) {
        components.componentSearchAttributes( placeHolder ).sendKeys( value );
        components.componentSearchAttributes( placeHolder ).sendKeys( Keys.ENTER );
    }
}