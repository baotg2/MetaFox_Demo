package metafox.stepdefs;

import metafox.CucumberTestRunner;
import metafox.pageobjects.Components;
import metafox.support.DataProvider;
import metafox.support.IsComponentVisible;
import metafox.support.Locator;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Nonnull;
import java.time.Duration;


public class StepDefinitions {

    protected Integer idOfLastImageBeforeUpload;

    public final WebDriver driver = CucumberTestRunner.getWebDriver();

    protected Components components = new Components();

    protected IsComponentVisible isComponentVisible = new IsComponentVisible();


    protected DataProvider dataExecutor = new DataProvider();

    protected String currentUrlValue;

    protected static final Logger LOGGER = LoggerFactory.getLogger("Steps");

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

    public WebElement waitUntilDisplayed(@Nonnull By by) {
        return new WebDriverWait(driver, Duration.ofSeconds(10))
                .until(ExpectedConditions.visibilityOfElementLocated(by));
    }

    public WebElement waitUntilDisplayed(@Nonnull By context, @Nonnull By by1) {
        return waitUntilDisplayed(Locator.byTestId(context, by1));
    }

    public WebElement waitUntilDisplayed(@Nonnull By context, @Nonnull By by1, @Nonnull By by2) {
        return waitUntilDisplayed(Locator.byTestId(context, by1, by2));
    }

    public WebElement waitUntilDisplayed(@Nonnull By context, @Nonnull By by1, @Nonnull By by2, @Nonnull By by3) {
        return waitUntilDisplayed(Locator.byTestId(context, by1, by2, by3));
    }

    public void waitUntilInvisible(@Nonnull By testId) {
        new WebDriverWait(driver, Duration.ofSeconds(15))
                .until(ExpectedConditions.invisibilityOfElementLocated(testId));
    }


    public @Nonnull By getMenuContext() {
        return CucumberTestRunner.getManagedWebDriver().getMenuContext();
    }

    public @Nonnull By getSectionContext() {
        return CucumberTestRunner.getManagedWebDriver().getSectionContext();
    }

    public void setMenuContext(By menuContext) {
        CucumberTestRunner.getManagedWebDriver().setMenuContext(menuContext);
    }


    public void setSectionContext(By sectionContext) {
        CucumberTestRunner.getManagedWebDriver().setSectionContext(sectionContext);
    }
}
