package pHpFox.pageObject;


import io.cucumber.java.de.Wenn;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import pHpFox.conf.index;

public class loginPage extends index {
    private WebElement webElement = null;
    By txt_email = By.name("email");
    By txt_passWord = By.name("password");
    By btn_SignIn = By.id("mui-3");
    By txt_userNameProfile = By.xpath("//a[@data-testid='user']/span[2]");
    By dilalogErrMsg = By.id("dialogDescription");

    public WebElement txt_UserName (WebDriver driver){
        webElement = driver.findElement(txt_email);
        return webElement;
    }
    public WebElement txt_Password(WebDriver driver){
        webElement = driver.findElement(txt_passWord);
        return webElement;
    }
    public  WebElement btn_login(WebDriver driver){
        webElement = driver.findElement(btn_SignIn);
        return webElement;
    }

    public WebElement isField_userNameProfile(WebDriver driver){
        webElement = driver.findElement(txt_userNameProfile);
        return webElement;
    }

    public WebElement getTextDialog(WebDriver driver){
        webElement = driver.findElement(dilalogErrMsg);
        return webElement;
    }

    public WebElement accessMenuSide(WebDriver driver, String sideMenuName){
        webElement = driver.findElement(By.xpath("//div[@data-testid='"+sideMenuName+"']/a/div/span"));
        return webElement;
    }

    public WebElement btn_HomePage(WebDriver driver){
        webElement = driver.findElement(By.xpath("//img[@data-testid ='imgLogo']"));
        return webElement;
    }
}
