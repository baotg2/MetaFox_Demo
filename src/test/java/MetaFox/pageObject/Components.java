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
     * @param text is attributes find elements
     * @return element <h1></h1>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentH2ItemTitle(String text) {
        return Index.getDriver().findElement(By.xpath("//h2[text()='" + text + "']"));

    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param text is attributes find elements
     * @return element <h3></h3>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentH3ItemTitle(String text) {
        return Index.getDriver().findElement(By.xpath("//h3[text()='" + text + "']"));

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
     * @param dataTestId is attributes find elements
     * @return element <button></button>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentButtonDataTestID(String dataTestId) {
        return Index.getDriver().findElement(By.xpath("//button[@data-testid ='" + dataTestId + "']"));
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
     * @param textValue is attributes find elements
     * @return element <button></button>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public List<WebElement> componentListButtonText(String textValue) {
        return Index.getDriver().findElements(By.xpath("//button[text()='" + textValue + "']"));
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
     * @param dataValue is index of element on ListBox
     * @return child element of <list></list>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentsDivDataValue(String dataValue) {
        return Index.getDriver().findElement(By.xpath("//div[@data-value='" + dataValue + "']"));
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
        return Index.getDriver().findElement(By.xpath("//div[contains(text(), '"+msgValue+"')]"));
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
        return Index.getDriver().findElement(By.xpath("//input[@id ='" + id + "']"));
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
    public List<WebElement> componentDivButton(String dataTestID) {
        return Index.getDriver().findElements(By.xpath("//div[@data-testid = '" + dataTestID + "']//button[2]"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @return element <span></span>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public List <WebElement> componentsSpanList() {
        return Index.getDriver().findElements(By.xpath("//div[@class ='MuiListItemText-root ltr-1x690uy']//span"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @return element <button></button>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentsTagButton(String labelValue) {
        return Index.getDriver().findElement(By.xpath("//button[@aria-label ='"+labelValue+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @return element <button></button>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentsActionButton(String controlsValue) {
        return Index.getDriver().findElement(By.xpath("//button[@aria-controls ='"+controlsValue+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @return list element <button></button>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public List<WebElement> componentsListTagButton(String labelValue) {
        return Index.getDriver().findElements(By.xpath("//button[@aria-label ='"+labelValue+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @return list element <button></button>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentsInputChecked(String labelValue) {
        return Index.getDriver().findElement(By.xpath("//input[@aria-label ='"+labelValue+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param dataTestID is datatestID of element
     * @return element h4 has dataTestID
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author baotg2
     * @since 04-05-2022
     */
    public WebElement componentH4DataTestID(String dataTestID){
        return Index.getDriver().findElement(By.xpath("//h4[@data-testid='"+dataTestID+"']/a"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param textValue is text of element
     * @return element h5 has text
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author baotg2
     * @since 04-05-2022
     */
    public WebElement componentH5Text(String textValue){
        return Index.getDriver().findElement(By.xpath("//h5[text()='"+textValue+"']"));
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param dataTestID is datatestID of element
     * @return element h5 has dataTestID
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author baotg2
     * @since 04-05-2022
     */
    public WebElement componentsListH5DataTestID(String dataTestID){
        return Index.getDriver().findElement(By.xpath("//h5[@data-testid='"+dataTestID+"']"));
    }

    /**------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param itemProfile is ID of element
     * @return list of element have itemProfile
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author baotg2
     * @since 06-07-2022
     */
    public List<WebElement> componentsListElementByID(String itemProfile)
    {
        return Index.getDriver().findElements(By.xpath("//*[@id='"+itemProfile+"']"));
    }

    public List<WebElement> componentsListLabel(){
        return Index.getDriver().findElements(By.xpath("//label"));
    }
}

