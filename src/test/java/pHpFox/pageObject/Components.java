package pHpFox.pageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import pHpFox.conf.Index;

import java.util.List;

/**---------------------------------------------------------------------------------------------------------------------------------------------
 * @since  04-05-2022
 * @Author BaoTG
 * @purpose The Components class is a class create all elements object
 * @package pageObject
 ---------------------------------------------------------------------------------------------------------------------------------------------*/
public class Components {
    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since  04-05-2022
     * @Author BaoTG
     * @param driver is assigned in the constructor
     * @package pageObject
     -----------------------------------------------------------------------------------------------------------------------------------------*/
    public Components(WebDriver driver){
        Index.driver = driver;
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @param dataTestid is attributes find elements
     * @return element <input></input>
     -----------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentInputDataTestID(String dataTestid){
        return Index.getDriver().findElement(By.xpath("//input[@data-testid ='"+dataTestid+"']"));

    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since  04-05-2022
     * @Author BaoTG
     * @param text is attributes find elements
     * @return element <h1></h1>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentH1ItemTitle(String text){
        return Index.getDriver().findElement(By.xpath("//h1[text()='"+text+"']"));

    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since  04-05-2022
     * @Author BaoTG
     * @param dataTestid is attributes find elements
     * @return element <div></div>
     -----------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentDivDataTestID(String dataTestid){
        return Index.getDriver().findElement(By.xpath("//div[@data-testid='"+dataTestid+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since  04-05-2022
     * @Author BaoTG
     * @param dataTestid is attributes find elements
     * @return List elements <div></div>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public List<WebElement> componentListDivDataTestID(String dataTestid){
        return Index.getDriver().findElements(By.xpath("//div[@data-testid='"+dataTestid+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since  04-05-2022
     * @Author BaoTG
     * @param dataTestid is attributes find elements
     * @return element <button></button>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentButtonDataTestID(String dataTestid){
        return Index.getDriver().findElement(By.xpath("//button[@data-testid ='"+dataTestid+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since  04-05-2022
     * @Author BaoTG
     * @param textValue is attributes find elements
     * @return element <button></button>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentButtonText(String textValue){
        return Index.getDriver().findElement(By.xpath("//button[text()='"+textValue+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @param href is attributes find elements
     * @return element <a></a>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentLinkText(String href){
        return Index.getDriver().findElement(By.xpath("//a[contains(@href, '"+href+"')]"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @param spanName is attributes find elements
     * @return element <span></span>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentSpanName(String spanName){
        return Index.getDriver().findElement(By.xpath("//span[text()='"+spanName+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @param text is is attributes find elements
     * @return element <p></p>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentPText(String text)
    {
        return Index.getDriver().findElement(By.xpath("//p[text()='"+text+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @param actionName is is attributes find elements
     * @return element <button></button>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentButtonAction(String actionName){
        return Index.getDriver().findElement(By.xpath("//div[@class ='ltr-77ogkp']/button[@data-testid='"+actionName+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @param roleName is is attributes find elements
     * @return element <div></div>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentDivRole(String roleName){
        return Index.getDriver().findElement(By.xpath("//div[@role='"+roleName+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @param roleName is is attributes find elements
     * @return element <list></list>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public List<WebElement> componentsListDivRole(String roleName){
        return Index.getDriver().findElements(By.xpath("//div[@role='"+roleName+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @param msgValue is is attributes find elements
     * @return element <div></div>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentsDivMsg(String msgValue){
        return Index.getDriver().findElement(By.xpath("//div[text()='"+msgValue+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @param id is is attributes find elements
     * @return element <input></input>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentInputID(String id){
       return Index.getDriver().findElement(By.id(id));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @param className is is attributes find elements
     * @return element <a></a>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentLinkDataTestID(String className){
        return Index.getDriver().findElement(By.xpath("//a[@data-testid='"+className+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @param dataTestID is is attributes find elements
     * @return List elements <button></button>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public List<WebElement> componentListButtonDataTestID(String dataTestID)
    {
        return Index.getDriver().findElements(By.xpath("//button[@data-testid='" + dataTestID + "']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @param attributesName is is attributes find elements
     * @return element <input></input>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentSearchAttributes(String attributesName){
        return Index.getDriver().findElement(By.xpath("//input[@placeholder='"+attributesName+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @param areaName is is attributes find elements
     * @return element <textarea></textarea>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentTextAreaDataTestID(String areaName){
        return Index.getDriver().findElement(By.xpath("//textarea[@data-testid ='"+areaName+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @param formIdName is is attributes find elements
     * @return element <form></form>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentMainFormDataTestID(String formIdName){
        return Index.getDriver().findElement(By.xpath("//form[@data-testid ='"+formIdName+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @param typeValue is is attributes find elements
     * @return element <input></input>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentInputType(String typeValue){
        return Index.getDriver().findElement(By.xpath("//input[@type='"+typeValue+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @param dataTestID is is attributes find elements
     * @return element <span></span>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentSpanDataTestID(String dataTestID){
        return Index.getDriver().findElement(By.xpath("//span[@data-testid ='"+dataTestID+"']//img"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @param dataTestID is is attributes find elements
     * @return element <div></div>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public WebElement componentDivButton(String dataTestID){
        return Index.getDriver().findElement(By.xpath("//div[@data-testid = '"+dataTestID+"']//button"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author BaoTG
     * @return element <span></span>
    ------------------------------------------------------------------------------------------------------------------------------------------*/
    public List<WebElement>componentsSpanlist(){
        return Index.getDriver().findElements(By.xpath("//div[@class ='MuiListItemText-root ltr-1x690uy']//span"));
    }
}
