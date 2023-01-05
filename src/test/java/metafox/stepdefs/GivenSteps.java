package metafox.stepdefs;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.qameta.allure.Allure;
import metafox.pageobjects.Components;
import metafox.support.DataProvider;
import metafox.support.IsComponentVisible;
import metafox.support.Locator;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import javax.annotation.Nonnull;
import java.io.ByteArrayInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.time.Duration;
import java.util.*;

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
public class GivenSteps extends StepDefinitions {

    Components components = new Components();
    IsComponentVisible isComponentVisible = new IsComponentVisible();

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
    //@Given("^the user logged in as \"([^\"]*)\"$")
    public void the_user_logged_in_as(String username) throws IOException, InterruptedException {
        String accessToken = DataProvider.getUserAccessToken(username);
        String cookieName = DataProvider.getAuthCookieName();
        driver.manage().addCookie(new Cookie(cookieName, accessToken));
    }


    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @purpose Login with username success to Meta Fox
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Given("^As a guest user$")
    public void as_guest() {
        String cookieName = DataProvider.getAuthCookieName();
        driver.manage().deleteCookie(new Cookie(cookieName, null));
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
    public void the_user_logged_in_form(String username) throws IOException, InterruptedException {
       isComponentVisible.waitElement(By.xpath("//input[@placeholder='Enter your username or email address']"));
       dataExecutor.setExcelFile(dataExecutor.excelPathFile, "users");
       for ( int i = 1; i <= dataExecutor.getRowCountInSheet(); i++ ) {
           if ( dataExecutor.getCellData(i, 3).toLowerCase().equals(username) ) {
               components.componentSearchAttributes("Enter your username or email address").sendKeys(dataExecutor.getCellData(i, 4));
               if ( !dataExecutor.getCellData(i, 3).toLowerCase().equals("admin") ) {
                   components.componentSearchAttributes("Enter your password").sendKeys("123456789");
               }
               else {
                   components.componentSearchAttributes("Enter your password").sendKeys(dataExecutor.getCellData(i, 5));
               }
               break;
           }
       }
       components.componentButtonDataTestID("buttonLogin").click();
       isComponentVisible.waitElement(By.xpath("//div[@data-testid ='formSearch']"));
       assertTrue(components.componentDivDataTestID("formSearch").isDisplayed());
    }

    @Given("the browser will get Administrator URL")
    public void getAddressACP() throws InterruptedException {
        driver.get(System.getenv("BASE_URL") + "/admincp");
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

    @Given("the browser opened at {string}")
    public void the_browser_opened_at(String url) {
        driver.get(System.getenv("BASE_URL")+url);
    }

    public void withinTheContent(@Nonnull String name) {
        By context = Locator.bySection(name);
        setSectionContext(context);

        WebElement element = new WebDriverWait(driver, Duration.ofSeconds(30))
                .ignoring(NoSuchElementException.class)
                .until(ExpectedConditions.visibilityOfElementLocated(context));
        assertTrue(element.isDisplayed());
    }

    @Given("^within the (content|header|footer|footer|subside|sidebar menu|sidebar|main form|profile menu|form|main top|slot top|status composer|friend picker|form" +
            "|basic|group picker|report|search|detail photo|detail poll|edit popup|detail videos)$")
    public void GivenWithinTheContent(@Nonnull String name) {
        withinTheContent(name);
    }

    @Given("the user opened {string} profile page")
    public void theUserOpenedProfilePage(@Nonnull String username) throws IOException, InterruptedException {
        Map<String, String> user = DataProvider.getUser(username);

        String url = user.get("url").toString();

        driver.get(String.format("%s%s", System.getenv("BASE_URL"), url));
    }

    @Given("switch account {string}")
    public void openNewTab(String username) throws IOException, InterruptedException {
        Thread.sleep(4000);
        isComponentVisible.waitElement(By.xpath("//div[@data-testid ='menuAppBar']//div[@data-testid ='more']"));
        driver.findElement(By.xpath("//div[@data-testid ='menuAppBar']//div[@data-testid ='more']")).click();
        isComponentVisible.waitElement(By.xpath("//span[text()='Logout']"));
        components.componentSpanName("Logout").click();
        driver.get(String.format("%s/login", System.getenv("BASE_URL")));
        the_user_logged_in_form(username);
    }

    @Given("the user navigates to {string}")
    public void theUserNavigateTo(String url) throws InterruptedException {
        driver.navigate().to(driver.getCurrentUrl()+url);
        Thread.sleep(1000);
    }
}
