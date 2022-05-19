package pHpFox.stepDefined;

import io.cucumber.java.en.Given;
import org.openqa.selenium.By;
import pHpFox.conf.Index;
import pHpFox.pageObject.Components;
import pHpFox.support.DataExecutor;
import pHpFox.support.IsComponentVisible;

import java.io.IOException;

import static org.junit.Assert.assertTrue;

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
    public void login(String username) throws IOException {
        isComponentVisible.waitElement(By.xpath("//input[@data-testid ='inputEmail']"));
        dataExecutor.setExcelFile(dataExecutor.excelPathFile, "users");
        for ( int i = 1; i <= dataExecutor.getRowCountInSheet(); i++ ) {
            if ( dataExecutor.getCellData(i, 2).toLowerCase().equals(username) ) {
                components.componentInputDataTestID("inputEmail").sendKeys(dataExecutor.getCellData(i, 4));
                if ( !dataExecutor.getCellData(i, 2).toLowerCase().equals("admin") ) {
                    components.componentInputDataTestID("inputPassword").sendKeys("123456");
                }
                else {
                    components.componentInputDataTestID("inputPassword").sendKeys(dataExecutor.getCellData(i, 5));
                }
                break;
            }
        }
        components.componentButtonDataTestID("buttonLogin").click();
        isComponentVisible.waitElement(By.xpath("//div[@data-testid ='new_notification']"));
        assertTrue(components.componentDivDataTestID("new_notification").isDisplayed());
    }

}
