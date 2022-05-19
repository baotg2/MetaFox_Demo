package pHpFox.stepDefined;

import org.openqa.selenium.WebDriver;
import pHpFox.conf.Index;
import pHpFox.pageObject.Components;

public class SupportStepDefinition {

    Components components = new Components(Index.driver);

    /**------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param driver is param call driver
     * @purpose constructor of {@link SupportStepDefinition}
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 044-05-2022
     */
    public SupportStepDefinition (WebDriver driver){
        Index.driver = driver;
    }

    /**------------------------------------------------------------------------------------------------------------------------------------------
     * @purpose lick on logo and back to home page
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 044-05-2022
     */
    public void isBackToHomePage(){
        components.componentLinkDataTestID("linkLogo").click();
    }
}
