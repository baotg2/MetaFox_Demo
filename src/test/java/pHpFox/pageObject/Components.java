package pHpFox.pageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.util.List;

import static pHpFox.conf.Index.driver;

public class Components {
    private WebElement webElement;
    private List<WebElement> webElementList;

    public WebElement componentInputDataTestID(String dataTestid){
        webElement = driver.findElement(By.xpath("//input[@data-testid ='"+dataTestid+"']"));
        return webElement;
    }


    public WebElement componentDivID(String id){
        webElement = driver.findElement(By.xpath("//div[contains(@id,'"+id+"')]"));
        return webElement;
    }

    public WebElement componentDivDataTestID(String dataTestid){
        webElement = driver.findElement(By.xpath("//div[@data-testid='"+dataTestid+"']"));
        return webElement;
    }

    public WebElement componentButtonDataTestID(String dataTestid){
        webElement = driver.findElement(By.xpath("//button[@data-testid ='"+dataTestid+"']"));
        return webElement;
    }

    public WebElement componentLinkText(String href){
        webElement = driver.findElement(By.xpath("//a[contains(@href, '"+href+"')]"));
        return webElement;
    }

    public WebElement componentSpanName(String spanName){
        webElement = driver.findElement(By.xpath("//span[text()='"+spanName+"']"));
        return webElement;
    }

    public WebElement componentMSg(String txtName){
        webElement = driver.findElement(By.xpath("//p[@data-testid='"+txtName+"']"));
        return webElement;
    }

    public WebElement componentDivRole(String roleName){
        webElement = driver.findElement(By.xpath("//div[@role='"+roleName+"']"));
        return webElement;
    }

    public WebElement componentsDivMsg(String msgValue){
        webElement = driver.findElement(By.xpath("//div[text()='"+msgValue+"']"));
        return webElement;
    }

    public WebElement componentInputID(String id){
        webElement = driver.findElement(By.id(id));
        return webElement;
    }

    public WebElement componentDivClass(String className){
        webElement = driver.findElement(By.className(className));
        return webElement;
    }

    public List<WebElement> listButtonDataTestID(String dataTestID)
    {
        webElementList = driver.findElements(By.xpath("//button[@data-testid='"+dataTestID+"']"));
        return webElementList;
    }

    public WebElement searchAttributes(){
        webElement = driver.findElement(By.xpath("//input[@placeholder='Search blogs']"));
        return webElement;
    }

    public WebElement textAreaDataTestID(String areaName){
        webElement = driver.findElement(By.xpath("//textarea[@data-testid ='"+areaName+"']"));
        return webElement;
    }
}
