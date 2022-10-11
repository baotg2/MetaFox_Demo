package MetaFox.stepDefined;

import io.cucumber.java.en.Given;
import io.qameta.allure.Allure;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.openqa.selenium.By;
import MetaFox.browserConfig.Index;
import MetaFox.pageObject.Components;
import MetaFox.support.DataExecutor;
import MetaFox.support.IsComponentVisible;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.io.ByteArrayInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import static MetaFox.browserConfig.Index.currentUrlValue;
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

    Components components = new Components(Index.getDriver());
    IsComponentVisible isComponentVisible = new IsComponentVisible(Index.getDriver());
    DataExecutor dataExecutor = new DataExecutor();

    /**------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param username is user's name login success to MetaFox
     * @throws IOException occurs when an IO operation fails
     * @purpose Login with username success to Meta Fox
     * @Author baotg2
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    @Given("^the user logged in as \"([^\"]*)\"$")
    public void login(String username) throws IOException, InterruptedException {
        isComponentVisible.waitElement(By.xpath("//input[@placeholder='Enter your email address']"));
        dataExecutor.setExcelFile(dataExecutor.excelPathFile, "users");
        for ( int i = 1; i <= dataExecutor.getRowCountInSheet(); i++ ) {
            if ( dataExecutor.getCellData(i, 3).toLowerCase().equals(username) ) {
                components.componentSearchAttributes("Enter your email address").sendKeys(dataExecutor.getCellData(i, 4));
                if ( !dataExecutor.getCellData(i, 3).toLowerCase().equals("admin") ) {
                    components.componentSearchAttributes("Enter your password").sendKeys("123456");
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
        Index.getDriver().get(dataExecutor.readConstants("URLACP"));
        Thread.sleep(6000);
    }

    @Given("the user get current URL")
    public void getCurrentUrl(){
        currentUrlValue = Index.getDriver().getCurrentUrl();
    }

    @Given("the user open URL detail")
    public void openUrlDetail(){
        Index.getDriver().get(currentUrlValue);
    }

    @Given("^the user verify URL detail on \"([^\"]*)\"$")
    public void verifyUrlDetail(String site) throws Exception {
        Object obj = null;
        if (site.equals("site")){
            obj = new JSONParser().parse(new FileReader("src/test/java/MetaFox/testdata/page_urls.json"));
        }
        else {
            obj = new JSONParser().parse(new FileReader("src/test/java/MetaFox/testdata/admin_urls.json"));
        }
        JSONObject jo = (JSONObject) obj;
        JSONArray temp =(JSONArray) jo.get(site);
        Iterator<String> iterator = temp.iterator();
        List<String> list = new ArrayList<>();
        iterator.forEachRemaining(list::add);
        for (String tempURL : list) {
            Index.getDriver().get("https://staging-foxsocial.phpfox.us/"+tempURL.substring(1));
            Thread.sleep(4000);
            Allure.addAttachment(tempURL.substring(1), new ByteArrayInputStream(((TakesScreenshot) Index.getDriver()).getScreenshotAs(OutputType.BYTES)));
        }
    }
}