package MetaFox.stepDefined;

import org.openqa.selenium.WebDriver;
import MetaFox.browserConfig.Index;
import MetaFox.pageObject.Components;

/**
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 *
 * @version 1.0.1
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 * @Author baotg2
 * @purpose: SupportStepDefinition is class defined all steps use anywhere in test step
 * @since 04-05-2022
 */
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