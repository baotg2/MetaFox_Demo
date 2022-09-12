package MetaFox.stepDefined;

import MetaFox.browserConfig.Index;
import MetaFox.pageObject.Components;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;

import static MetaFox.browserConfig.Index.driver;
import static java.awt.SystemColor.window;

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

    Components components = new Components(driver);

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
     * @since 04-05-2022
     */
    public void isBackToHomePage(){
        components.componentLinkDataTestID("linkLogo").click();
    }

    /**------------------------------------------------------------------------------------------------------------------------------------------
     * @purpose scroll to end page
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     *
     */
    public void scrollToEndPage(){
        JavascriptExecutor js = (JavascriptExecutor) Index.getDriver();
        js.executeScript("window.scrollBy(0,document.body.scrollHeight)");
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @purpose scroll to up page
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 0-05-2022
     */
    public void scrollUpPage() {
        JavascriptExecutor js = (JavascriptExecutor) Index.getDriver();
        js.executeScript("window.scrollTo(document.body.scrollHeight, 0)");
    }
    /**--------------------------------------------------------------------------------------------------------------------------------
     *
     * @param tab is tab want to verify
     * @purpose verify open new tab param successfully
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    public void switchTab(String tab) {
        for (String window :Index.getDriver().getWindowHandles()){
            Index.getDriver().switchTo().window(window);
            if (Index.getDriver().getTitle().equals(tab)){
                System.out.println(Index.getDriver().getTitle());
            }
        }
    }
}