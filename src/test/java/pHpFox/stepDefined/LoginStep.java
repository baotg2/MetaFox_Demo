package pHpFox.stepDefined;

import io.cucumber.java.PendingException;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import pHpFox.pageObject.Components;
import pHpFox.support.DataExcutor;
import pHpFox.support.IsComponentVisible;
import java.io.IOException;
import java.util.Objects;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static pHpFox.conf.Index.driver;

public class LoginStep {
    Components components = new Components();
    IsComponentVisible isComponentVisible = new IsComponentVisible();
    DataExcutor dataExcutor = new DataExcutor();

    @Given("^the user logged in as \"([^\"]*)\"$")
    public void login(String username) throws IOException, InterruptedException {
        isComponentVisible.waitElement(By.xpath("//input[@data-testid ='inputEmail']"));
        dataExcutor.setExcelFile(dataExcutor.excelPathFile, "users");
        for(int i=1; i<=dataExcutor.getRowCountInSheet(); i++){
            if(dataExcutor.getCellData(i, 2).toLowerCase().equals(username)){
                components.componentInputDataTestID("inputEmail").sendKeys(dataExcutor.getCellData(i,4));
                if(!dataExcutor.getCellData(i, 2).toLowerCase().equals("admin")){
                    components.componentInputDataTestID("inputPassword").sendKeys("123456");
                }
                else {
                    components.componentInputDataTestID("inputPassword").sendKeys(dataExcutor.getCellData(i, 5));
                }
                break;
            }
        }
        components.componentButtonDataTestID("buttonLogin").click();
        isComponentVisible.waitElement(By.xpath("//div[@data-testid ='new_notification']"));
        assertTrue(components.componentDivDataTestID("new_notification").isDisplayed());
    }

    @Then("I want to verified error message with user {string}, {string}")
    public void invalidUserCredentials(String errorMsg, String userName, String passWord ) throws PendingException {
        isComponentVisible.waitElement(By.id("mui-1"));
        components.componentInputDataTestID("inputEmail").sendKeys(userName);
        components.componentInputDataTestID("inputPassword").sendKeys(passWord);
        components.componentButtonDataTestID("buttonLogin").click();
        isComponentVisible.waitElement(By.id("dialogDescription"));

    }

    @Then("^the user see error message \"([^\"]*)\"is displayed$")
    public boolean isErrMsgDisplayed(String mss){
        assertEquals(components.componentMSg("popupMessage").getText(), mss);
        return true;
    }

    @And("I want to logout and change another user")
    public void logout() throws InterruptedException {
        isComponentVisible.waitElement(By.xpath("//div[@data-testid ='more']"));
        components.componentDivDataTestID("more").click();
        isComponentVisible.waitElement(By.xpath("//span[text()='Logout']"));
        components.componentSpanName("Logout").click();
        isComponentVisible.iWaitForSeconds(4);
        assertTrue(components.componentButtonDataTestID("buttonLogin").isDisplayed());
    }

    @Then("^the browser opened at item \"([^\"]*)\" and tab \"([^\"]*)\"$")
    public void openNewURL(String item, String url) {
        components.componentLinkText(item).click();
        if (!Objects.equals(url, "")) {
            components.componentLinkText(url).click();
        }
    }
    @Then("^back to previous page")
    public void backToPreviousPage(){
        driver.navigate().back();
    }
}
