package pHpFox.stepDefined;

import io.cucumber.java.PendingException;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import pHpFox.Constant;
import pHpFox.conf.Index;
import pHpFox.pageObject.Components;
import pHpFox.support.IsComponentVisible;

import java.io.IOException;
import java.util.Objects;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class LoginStep {
    Components components = new Components();
    Constant constant = new Constant();
    Index index = new Index();
    IsComponentVisible isComponentVisible = new IsComponentVisible();

    @Given("^the user logged in as \"([^\"]*)\"$")
    public void login(String username) throws IOException, InterruptedException {
        isComponentVisible.waitElement(By.id("mui-1"));
        index.setExcelFile(constant.excelPathFile, "users");
        for(int i=1; i<=index.getRowCountInSheet(); i++){
            if(index.getCellData(i, 2).toLowerCase().equals(username)){
                components.componentInputDataTestID("inputEmail").sendKeys(index.getCellData(i,4));
                if(!index.getCellData(i, 2).toLowerCase().equals("admin")){
                    components.componentInputDataTestID("inputPassword").sendKeys("123456");
                }
                else {
                    components.componentInputDataTestID("inputPassword").sendKeys(index.getCellData(i, 5));
                }
                break;
            }
        }
        components.componentButtonDataTestID("buttonLogin").click();
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='formSearch']"));
        assertTrue(components.componentDivDataTestID("formSearch").isDisplayed());
    }

    @Then("I want to verified error message {string} with user {string}, {string}")
    public boolean invalidUserCredentials(String errorMsg, String userName, String passWord ) throws PendingException {
        isComponentVisible.waitElement(By.id("mui-1"));
        components.componentInputDataTestID("inputEmail").sendKeys(userName);
        components.componentInputDataTestID("inputPassword").sendKeys(passWord);
        components.componentButtonDataTestID("buttonLogin").click();
        isComponentVisible.waitElement(By.id("dialogDescription"));
        assertEquals(components.componentMSg("popupMessage").getText(), errorMsg);
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
        if(!Objects.equals(url, "")){
            components.componentLinkText(url).click();
        }

    }
}
