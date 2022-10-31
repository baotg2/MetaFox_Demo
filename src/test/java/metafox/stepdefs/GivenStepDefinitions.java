package metafox.stepdefs;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.qameta.allure.Allure;
import metafox.CucumberTestRunner;
import metafox.pageobjects.Components;
import metafox.support.DataProvider;
import metafox.support.IsComponentVisible;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;

import java.io.ByteArrayInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.*;

import static metafox.browserConfig.Index.currentUrlValue;
import static org.junit.Assert.assertTrue;

/**
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 *
 * @version 1.0.1
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 * @Author baotg2
 * @purpose: GivenStepDefinitions is class defined all steps use Method @Given
 * @since 04-05-2022
 */
public class GivenStepDefinitions {

    Components components = new Components();
    IsComponentVisible isComponentVisible = new IsComponentVisible();

    private final WebDriver driver = CucumberTestRunner.getWebDriver();

    public GivenStepDefinitions() {

    }


    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param username is user's name login success to MetaFox
     * @throws IOException occurs when an IO operation fails
     * @purpose Login with username success to Meta Fox
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Given("^the user logged in as \"([^\"]*)\"$")
    public void the_user_logged_in_as(String username) throws IOException, InterruptedException {
        isComponentVisible.waitElement(By.xpath("//input[@placeholder='Enter your email address']"));

        Optional<Map<String, String>> user = DataProvider.fromSheet("users")
                .stream()
                .filter(row -> row.get("username").equalsIgnoreCase(username)).findFirst();

        if (!user.isPresent()) throw new InterruptedException("Failed logged in as " + username);


        components.componentSearchAttributes("Enter your email address").sendKeys(user.get().get("email"));
        components.componentSearchAttributes("Enter your password").sendKeys(user.get().get("password"));

        components.componentButtonDataTestID("buttonLogin").click();
        Thread.sleep(6000);
        isComponentVisible.waitElement(By.xpath("//div[@data-testid ='formSearch']"));
        assertTrue(components.componentDivDataTestID("formSearch").isDisplayed());
    }

    @Given("the browser will get Administrator URL")
    public void getAddressACP() throws InterruptedException {
        driver.get(System.getenv("BASE_URL") + "admincp/");
        Thread.sleep(6000);
    }

    @Given("the user get current URL")
    public void getCurrentUrl() {
        currentUrlValue = driver.getCurrentUrl();
    }

    @Given("the user open URL detail")
    public void openUrlDetail() {
        driver.get(currentUrlValue);
    }

    @Given("^the user verify URL detail on \"([^\"]*)\"$")
    public void verifyUrlDetail(String site) throws Exception {
        Object obj = null;
        if (site.equals("site")) {
            obj = new JSONParser().parse(new FileReader("src/test/resources/fixtures/page_urls.json"));
        } else {
            obj = new JSONParser().parse(new FileReader("src/test/resources/fixtures/admin_urls.json"));
        }
        JSONObject jo = (JSONObject) obj;
        JSONArray temp = (JSONArray) jo.get(site);
        Iterator<String> iterator = temp.iterator();
        List<String> list = new ArrayList<>();
        iterator.forEachRemaining(list::add);
        for (String tempURL : list) {
            driver.get("https://staging-foxsocial.phpfox.us/" + tempURL.substring(1));
            Thread.sleep(4000);
            Allure.addAttachment(tempURL.substring(1), new ByteArrayInputStream(((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES)));
        }
    }

    @And("the browser opened at {string}")
    public void theBrowserOpenedAt(String url) {
        driver.get(System.getenv("BASE_URL") + url);
    }
}
