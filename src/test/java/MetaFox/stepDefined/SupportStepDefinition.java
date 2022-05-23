package MetaFox.stepDefined;

import org.openqa.selenium.WebDriver;
import MetaFox.conf.Index;
import MetaFox.pageObject.Components;

public class SupportStepDefinition {

    Components components = new Components(Index.driver);

    /**------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param driver is param call driver
     * @purpose constructor of SupportStepDefinition
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