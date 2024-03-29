package metafox.webdriver;

import metafox.support.Locator;
import org.json.simple.JSONObject;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import javax.annotation.Nonnull;
import java.util.List;

public class ManagedWebDriver {
    private String testName;
    private final WebDriverFactory webDriverFactory;
    private final JSONObject platform;
    private WebDriver webDriver;

    /**
     * Scoped within context, by default test in the main content
     * mark static to share the same context
     */
    private By sectionContext = Locator.bySection("content");

    /**
     * Scoped within context, by default test in the main content
     * mark static to share the same context
     */
    private By menuContext = Locator.bySection("sidebar menu");

    public @Nonnull By getSectionContext() {
        return sectionContext;
    }

    public void setSectionContext(By sectionContext) {
        this.sectionContext = sectionContext;
    }

    public @Nonnull By getMenuContext() {
        return menuContext;
    }

    public void setMenuContext(By menuContext) {
        this.menuContext = menuContext;
    }

    public ManagedWebDriver(String testMethodName, JSONObject platform) {
        this.testName = testMethodName;
        this.platform = platform;
        this.webDriverFactory = WebDriverFactory.getInstance();
    }

    public void setTestName(String testName) {
        this.testName = testName;
    }

    public JSONObject getPlatform() {
        return this.platform;
    }

    public WebDriver getWebDriver() {
        if (this.webDriver == null) {
            this.webDriver = this.webDriverFactory.createWebDriverForPlatform(this.platform, this.testName);
            this.webDriver.get(String.format("%s/login", System.getenv("BASE_URL")));
        }
        this.webDriver.manage().window().maximize();
        List<WebElement> elementAccept = webDriver.findElements(By.xpath("//button[text()='Accept']"));
        if(elementAccept.size()!=0){
            elementAccept.get(0).click();
        }
        return this.webDriver;
    }
}
