package MetaFox.pageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import MetaFox.browserConfig.Index;

import java.util.List;

/**
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 *
 * @Author BaoTG
 * @purpose The Components class is a class create all elements object
 * @package pageObject
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 * @since 04-05-2022
 */
public class Components {
    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param driver is assigned in the constructor
     * @Author BaoTG
     * @package pageObject
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    public Components(WebDriver driver) {
        Index.driver = driver;
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param dataTestid is attributes find elements
     * @return element <input></input>
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentInputDataTestID(String dataTestid) {
        return Index.getDriver().findElement(By.xpath("//input[@data-testid ='" + dataTestid + "']"));

    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param text is attributes find elements
     * @return element <h1></h1>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentH1ItemTitle(String text) {
        return Index.getDriver().findElement(By.xpath("//h1[text()='" + text + "']"));

    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param dataTestid is attributes find elements
     * @return element <div></div>
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentDivDataTestID(String dataTestid) {
        return Index.getDriver().findElement(By.xpath("//div[@data-testid='" + dataTestid + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param dataTestid is attributes find elements
     * @return List elements <div></div>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public List <WebElement> componentListDivDataTestID(String dataTestid) {
        return Index.getDriver().findElements(By.xpath("//div[@data-testid='" + dataTestid + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param dataTestid is attributes find elements
     * @return element <button></button>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentButtonDataTestID(String dataTestid) {
        return Index.getDriver().findElement(By.xpath("//button[@data-testid ='" + dataTestid + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param textValue is attributes find elements
     * @return element <button></button>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentButtonText(String textValue) {
        return Index.getDriver().findElement(By.xpath("//button[text()='" + textValue + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param href is attributes find elements
     * @return element <a></a>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentLinkText(String href) {
        return Index.getDriver().findElement(By.xpath("//a[contains(@href, '" + href + "')]"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param spanName is attributes find elements
     * @return element <span></span>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentSpanName(String spanName) {
        return Index.getDriver().findElement(By.xpath("//span[text()='" + spanName + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param text is is attributes find elements
     * @return element <p></p>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentPText(String text) {
        return Index.getDriver().findElement(By.xpath("//p[text()='" + text + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param actionName is is attributes find elements
     * @return element <button></button>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentButtonAction(String actionName) {
        return Index.getDriver().findElement(By.xpath("//div[@class ='ltr-77ogkp']/button[@data-testid='" + actionName + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param roleName is is attributes find elements
     * @return element <div></div>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentDivRole(String roleName) {
        return Index.getDriver().findElement(By.xpath("//div[@role='" + roleName + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param roleName is is attributes find elements
     * @return element <list></list>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public List <WebElement> componentsListDivRole(String roleName) {
        return Index.getDriver().findElements(By.xpath("//div[@role='" + roleName + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param linkText is is attributes find elements
     * @return element <list></list>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentTooltip(String linkText) {
        return Index.getDriver().findElement(By.xpath("//div[@role ='tooltip']//a[text()='" + linkText + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param msgValue is is attributes find elements
     * @return element <div></div>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentsDivMsg(String msgValue) {
        return Index.getDriver().findElement(By.xpath("//div[text()='" + msgValue + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param id is is attributes find elements
     * @return element <input></input>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentInputID(String id) {
        return Index.getDriver().findElement(By.id(id));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param className is is attributes find elements
     * @return element <a></a>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentLinkDataTestID(String className) {
        return Index.getDriver().findElement(By.xpath("//a[@data-testid='" + className + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param dataTestID is is attributes find elements
     * @return List elements <button></button>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public List <WebElement> componentListButtonDataTestID(String dataTestID) {
        return Index.getDriver().findElements(By.xpath("//button[@data-testid='" + dataTestID + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param attributesName is is attributes find elements
     * @return element <input></input>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentSearchAttributes(String attributesName) {
        return Index.getDriver().findElement(By.xpath("//input[@placeholder='" + attributesName + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param areaName is is attributes find elements
     * @return element <textarea></textarea>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentTextAreaDataTestID(String areaName) {
        return Index.getDriver().findElement(By.xpath("//textarea[@data-testid ='" + areaName + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param formIdName is is attributes find elements
     * @return element <form></form>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentMainFormDataTestID(String formIdName) {
        return Index.getDriver().findElement(By.xpath("//form[@data-testid ='" + formIdName + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param typeValue is is attributes find elements
     * @return element <input></input>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentInputType(String typeValue) {
        return Index.getDriver().findElement(By.xpath("//input[@type='" + typeValue + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param dataTestID is is attributes find elements
     * @return element <span></span>/img
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentSpanDataTestIDImage(String dataTestID) {
        return Index.getDriver().findElement(By.xpath("//span[@data-testid ='" + dataTestID + "']//img"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param dataTestID is is attributes find elements
     * @return element <span></span>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentSpanDataTestID(String dataTestID) {
        return Index.getDriver().findElement(By.xpath("//span[@data-testid ='" + dataTestID + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param dataTestID is is attributes find elements
     * @return element <div></div>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentDivButton(String dataTestID) {
        return Index.getDriver().findElement(By.xpath("//div[@data-testid = '" + dataTestID + "']//button"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @return element <span></span>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public List <WebElement> componentsSpanlist() {
        return Index.getDriver().findElements(By.xpath("//div[@class ='MuiListItemText-root ltr-1x690uy']//span"));
    }
}
