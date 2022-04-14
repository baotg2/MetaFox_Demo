package pHpFox.stepDefined;

import io.cucumber.java.PendingException;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import pHpFox.conf.constants;
import pHpFox.conf.hook;
import pHpFox.conf.index;
import pHpFox.pageObject.loginPage;

import java.io.IOException;

import static org.junit.Assert.assertTrue;

public class loginStep extends index {
    loginPage loginPage = new loginPage();
    hook hook = new hook();
    constants constants = new constants();

    @Given("I get pHpFox address")
    public void iWantToOpenPHpBy() throws InterruptedException {
        driver.get(constants.URL);
        iWaitForSeconds(5);
    }

    @Then("I want to login pHpFox with user {string} at sheet {string}")
    public void LoginpHpFox(String username, String sheetname) throws IOException, InterruptedException {
        setExcelFile(excelPathFile, sheetname);
        for(int i=1; i<=getRowCountInSheet(); i++){
            if(getCellData(i, 2).toLowerCase().equals(username)){
                loginPage.txt_UserName(driver).sendKeys(getCellData(i,4));
                iWaitForSeconds(3);
                if(!getCellData(i, 2).toLowerCase().equals("admin")){
                    loginPage.txt_Password(driver).sendKeys("123456");
                }
                else {
                    loginPage.txt_Password(driver).sendKeys(getCellData(i, 5));
                }

                break;
            }
        }
        loginPage.btn_login(driver).click();

    }

    @And("I want verified login homepage success {string}")
    public boolean isUserFormDisplayed(String username) throws InterruptedException {
        waitElement(By.name("search"));
        assertTrue(loginPage.isField_userNameProfile(driver).getText().toLowerCase().equals(username));
        return true;
    }

    @Then("I want to verified error message {string} with user {string}, {string}")
    public boolean invalidUserCredentials(String errorMsg, String userName, String passWord ) throws PendingException {
        loginPage.txt_UserName(driver).sendKeys(userName);
        loginPage.txt_Password(driver).sendKeys(passWord);
        loginPage.btn_login(driver).click();
        waitElement(By.id("dialogDescription"));
        assertTrue(loginPage.getTextDialog(driver).getText().equals(errorMsg));
        return true;
    }

    @And("I want to logout and change another user")
    public void logout() throws InterruptedException {
        waitElement(By.xpath("//div[@data-testid ='more']/span"));
        loginPage.btn_more(driver).click();
        waitElement(By.xpath("//span[text()='Logout']"));
        loginPage.btn_logout(driver).click();
        iWaitForSeconds(4);
        assertTrue(loginPage.btn_login(driver).isDisplayed());
    }

}
