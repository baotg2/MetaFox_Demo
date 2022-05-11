package pHpFox.pageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import java.util.List;

import static pHpFox.conf.Index.driver;

public class Components {
    private WebElement webElement;

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

    public List<WebElement> componentListSpanName(String spanName){
        return driver.findElements(By.xpath("//span[text()='"+spanName+"']"));
    }

    public WebElement componentText(String text)
    {
        webElement= driver.findElement(By.xpath("//p[text()='"+text+"']"));
        return webElement;
    }
    public WebElement componentButtonAction(String actionName){
        webElement = driver.findElement(By.xpath("//div[@class ='ltr-77ogkp']/button[@data-testid='"+actionName+"']"));
        return webElement;
    }

    public WebElement componentDivRole(String roleName){
        return driver.findElement(By.xpath("//div[@role='"+roleName+"']"));
    }

    public List<WebElement> componentsListDivRole(String roleName){
        return driver.findElements(By.xpath("//div[@role='"+roleName+"']"));
    }

    public WebElement componentsDivMsg(String msgValue){
        return driver.findElement(By.xpath("//div[text()='"+msgValue+"']"));
    }

    public WebElement componentInputID(String id){
       return driver.findElement(By.id(id));
    }

    public WebElement componentLinkDataTestID(String className){
        webElement = driver.findElement(By.xpath("//a[@data-testid='"+className+"']"));
        return webElement;
    }

    public List<WebElement> componentListButtonDataTestID(String dataTestID)
    {
        return driver.findElements(By.xpath("//button[@data-testid='" + dataTestID + "']"));
    }

    public WebElement componentSearchAttributes(String attributesName){
        webElement = driver.findElement(By.xpath("//input[@placeholder='"+attributesName+"']"));
        return webElement;
    }


    public List<WebElement> componentListSearchAttributes(String attributesName){
        return driver.findElements(By.xpath("//input[@placeholder='"+attributesName+"']"));
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

    public WebElement componentDivButton(String dataTestID){
        webElement = driver.findElement(By.xpath("//div[@data-testid = '"+dataTestID+"']//button"));
        return webElement;
    }

    public List<WebElement>componentsSpanlist(){
        return driver.findElements(By.xpath("//div[@class ='MuiListItemText-root ltr-1x690uy']//span"));
    }

    public WebElement componentLink(String linkText){
        return driver.findElement(By.xpath("//a[text() ='"+linkText+"']"));
    }
}
