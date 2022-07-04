package MetaFox.stepDefined;

import io.cucumber.java.en.Given;
import org.openqa.selenium.By;
import MetaFox.browserConfig.Index;
import MetaFox.pageObject.Components;
import MetaFox.support.DataExecutor;
import MetaFox.support.IsComponentVisible;

import java.io.IOException;

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
        isComponentVisible.waitElement(By.xpath("//input[@data-testid ='inputEmail']"));
        dataExecutor.setExcelFile(dataExecutor.excelPathFile, "users");
        for ( int i = 1; i <= dataExecutor.getRowCountInSheet(); i++ ) {
            if ( dataExecutor.getCellData(i, 3).toLowerCase().equals(username) ) {
                components.componentInputDataTestID("inputEmail").sendKeys(dataExecutor.getCellData(i, 4));
                if ( !dataExecutor.getCellData(i, 3).toLowerCase().equals("admin") ) {
                    components.componentInputDataTestID("inputPassword").sendKeys("123456");
                }
                else {
                    components.componentInputDataTestID("inputPassword").sendKeys(dataExecutor.getCellData(i, 5));
                }
                break;
            }
        }
        components.componentButtonDataTestID("buttonLogin").click();
        isComponentVisible.waitElement(By.xpath("//div[@data-testid ='formSearch']"));
        assertTrue(components.componentDivDataTestID("formSearch").isDisplayed());
    }
}