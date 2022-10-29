package metafox.stepdefs;

import metafox.CucumberTestRunner;
import metafox.pageobjects.Components;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;


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

    Components components = new Components();

    private final WebDriver driver = CucumberTestRunner.getWebDriver();

    public SupportStepDefinition() {
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @purpose lick on logo and back to home page
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    public void isBackToHomePage() {
        components.componentLinkDataTestID("linkLogo").click();
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @purpose scroll to end page
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    public void scrollToEndPage() {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("window.scrollBy(0,document.body.scrollHeight)");
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @purpose scroll to up page
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 0-05-2022
     */
    public void scrollUpPage() {
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("window.scrollTo(document.body.scrollHeight, 0)");
    }

    /**
     * --------------------------------------------------------------------------------------------------------------------------------
     *
     * @param tab is tab want to verify
     * @purpose verify open new tab param successfully
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    public void switchTab(String tab) {
        for (String window : driver.getWindowHandles()) {
            driver.switchTo().window(window);
            if (driver.getTitle().equals(tab)) {
                System.out.println(driver.getTitle());
            }
        }
    }
}