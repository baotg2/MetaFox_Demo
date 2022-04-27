package pHpFox.pageObject;

import io.cucumber.java.de.Wenn;
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


    public WebElement componentH1ItemTitle(String text){
        webElement = driver.findElement(By.xpath("//h1[text()='"+text+"']"));
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


    public WebElement componentButtonText(String textValue){
        webElement = driver.findElement(By.xpath("//button[text()='"+textValue+"']"));
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

    public List<WebElement> componentListSpanText(String text)
    {
        webElementList = driver.findElements(By.xpath("//span[text()='"+text+"']"));
        return webElementList;
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

    public WebElement componentLinkDataTestID(String className){
        webElement = driver.findElement(By.xpath("//a[@data-testid='"+className+"']"));
        return webElement;
    }


    public List<WebElement> componentListButtonDataTestID(String dataTestID)
    {
        webElementList = driver.findElements(By.xpath("//button[@data-testid='"+dataTestID+"']"));
        return webElementList;
    }

    public WebElement componentSearchAttributes(String attributesName){
        webElement = driver.findElement(By.xpath("//input[@placeholder='"+attributesName+"']"));
        return webElement;
    }

    public WebElement componentTextAreaDataTestID(String areaName){
        webElement = driver.findElement(By.xpath("//textarea[@data-testid ='"+areaName+"']"));
        return webElement;
    }

    public WebElement componentMainFormDataTestID(String formIdName){
        return driver.findElement(By.xpath("//form[@data-testid ='"+formIdName+"']"));
    }

    public WebElement componentInputType(String typeValue){
        webElement = driver.findElement(By.xpath("//input[@type='"+typeValue+"']"));
        return  webElement;
    }

    public WebElement componentSpanDataTestID(String dataTestID){
        webElement = driver.findElement(By.xpath("//span[@data-testid ='"+dataTestID+"']//img"));
        return webElement;
    }
}
