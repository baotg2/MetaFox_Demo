package pHpFox.stepDefined;

import io.cucumber.java.PendingException;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.firefox.FirefoxDriver;
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

    @Given("I want to open pHp by Firefox")
    public void iWantToOpenPHpBy() throws InterruptedException {
        System.setProperty("webdriver.gecko.driver", "src/test/java/pHpFox/driver/geckodriver.exe");
        driver = new FirefoxDriver();
        driver.manage().window().maximize();
        driver.get(constants.URL);
        iWaitForSeconds(5);
    }

    @Then("I want to login pHpFox with user {string} at sheet {string}")
    public void LoginpHpFox(String username, String sheetname) throws IOException {
        setExcelFile(excelPathFile, sheetname);
        for(int i=1; i<=getRowCountInSheet(); i++){
            if(getCellData(i, 2).toLowerCase().equals(username)){
                loginPage.txt_UserName(driver).sendKeys(getCellData(i,4));
                loginPage.txt_Password(driver).sendKeys(getCellData(i, 5));
                break;
            }
        }
        loginPage.btn_login(driver).click();

    }

    @And("I want verified login homepage success {string}")
    public boolean isUserFormDisplayed(String username) throws InterruptedException {
        waitElement(By.name("search"));
        assertTrue(loginPage.isField_userNameProfile(driver).getText().equals(username));
        driver.quit();
        return true;
    }

    @Then("I want to verified error message {string} with user {string}, {string}")
    public boolean invalidUserCredentials(String errorMsg, String userName, String passWord ) throws PendingException {
        loginPage.txt_UserName(driver).sendKeys(userName);
        loginPage.txt_Password(driver).sendKeys(passWord);
        loginPage.btn_login(driver).click();
        waitElement(By.id("dialogDescription"));
        assertTrue(loginPage.getTextDialog(driver).getText().equals(errorMsg));
        driver.quit();
        return true;
    }


    @Then("I want to access {string} menu")
    public void iWantToAccessMenu(String arg0) throws InterruptedException {
        iWaitForSeconds(5);
        assertTrue(loginPage.accessMenuSide(driver, arg0).getText().toLowerCase().contains(arg0));
        loginPage.accessMenuSide(driver,arg0).click();
    }
    @And("I back to homePage and I see {string}")
    public void homePageClick(String itemsName){
        waitElement(By.xpath("//img[@data-testid ='imgLogo']"));
        loginPage.btn_HomePage(driver).click();
        assertTrue(loginPage.accessMenuSide(driver, itemsName).isDisplayed());
    }

}
