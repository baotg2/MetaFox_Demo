package pHpFox.stepDefined;

import io.cucumber.java.PendingException;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import pHpFox.pageObject.Components;
import pHpFox.support.DataExecutor;
import pHpFox.support.IsComponentVisible;
import java.io.IOException;
import java.util.Objects;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static pHpFox.conf.Index.driver;

public class LoginStep {
    Components components = new Components();
    IsComponentVisible isComponentVisible = new IsComponentVisible();
    DataExecutor dataExecutor = new DataExecutor();

    @Given("^the user logged in as \"([^\"]*)\"$")
    public void login(String username) throws IOException {
        isComponentVisible.waitElement(By.xpath("//input[@data-testid ='inputEmail']"));
        dataExecutor.setExcelFile(dataExecutor.excelPathFile, "users");
        for(int i = 1; i<= dataExecutor.getRowCountInSheet(); i++){
            if(dataExecutor.getCellData(i, 2).toLowerCase().equals(username)){
                components.componentInputDataTestID("inputEmail").sendKeys(dataExecutor.getCellData(i,4));
                if(!dataExecutor.getCellData(i, 2).equals("admin")){
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

    @Then("I want to verified error message with user {string}, {string}")
    public void invalidUserCredentials(String userName, String passWord ) throws PendingException {
        isComponentVisible.waitElement(By.id("mui-1"));
        components.componentInputDataTestID("inputEmail").sendKeys(userName);
        components.componentInputDataTestID("inputPassword").sendKeys(passWord);
        components.componentButtonDataTestID("buttonLogin").click();
        isComponentVisible.waitElement(By.id("dialogDescription"));

    }

    @Then("^the user see error message \"([^\"]*)\" is displayed$")
    public boolean isErrMsgDisplayed(String mss){
        isComponentVisible.waitElement(By.xpath("//p[text() ='"+mss+"']"));
        assertEquals(driver.findElement(By.xpath("//p[text() ='"+mss+"']")).getText(), mss);
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

    @And("I want to ")
    public void changeMode() throws InterruptedException {
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

    @Then("^the user want to click on \"([^\"]*)\"$")
    public void accessNewPage(String item) {
        isComponentVisible.waitElement(By.xpath("//a[contains(@href, '"+item+"')]"));
        components.componentLinkText(item).click();
    }

    @Then("^the move to page \"([^\"]*)\"$")
    public void openNewPage(String item) {
        driver.get("https://preview-foxsocial.phpfox.us/"+item+"");
    }

    @Then("^back to previous page")
    public void backToPreviousPage(){
        driver.navigate().back();
    }

    @Then("^the user input info sign up \"([^\"]*)\" with value \"([^\"]*)\"$")
    public void valueEmailSignUp(String placeHolder, String value){
        components.componentSearchAttributes(placeHolder).sendKeys(value);
        components.componentSearchAttributes(placeHolder).sendKeys(Keys.ENTER);
    }

    @And("the user input info password sign up {string} with value {string}")
    public void theUserInputInfoPasswordSignUpWithValue(String arg0, String arg1) {
        components.componentInputID(arg0).sendKeys(arg1);
        components.componentInputID(arg0).sendKeys(Keys.ENTER);
    }

    @And("the user click on check box {string}")
    public void theUserClickOnCheckOn(String arg0) {
        components.componentInputType(arg0).click();
    }


    @And("^the user want to \"([^\"]*)\"$")
    public void clickOnSpanText(String actionName){
        isComponentVisible.waitElement(By.xpath("//button[text()='"+actionName+"']"));
        components.componentButtonText(actionName).click();

    }

    @Then("^the user see button \"([^\"]*)\" is displayed")
    public void isButtonDisplayed(String buttonName){
        isComponentVisible.waitElement(By.xpath("//button[text()='Un Friend']"));
        assertTrue(components.componentButtonText(buttonName).isDisplayed());
    }
}
