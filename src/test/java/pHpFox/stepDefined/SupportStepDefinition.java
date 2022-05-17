package pHpFox.stepDefined;

import org.openqa.selenium.WebDriver;
import pHpFox.conf.Index;
import pHpFox.pageObject.Components;

public class SupportStepDefinition {

    Components components = new Components(Index.driver);
    public SupportStepDefinition (WebDriver driver){
        Index.driver = driver;
    }

    public void isBackToHomePage(){
        components.componentLinkDataTestID("linkLogo").click();
    }
}
