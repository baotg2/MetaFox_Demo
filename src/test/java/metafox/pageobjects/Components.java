package metafox.pageobjects;

import metafox.CucumberTestRunner;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

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
    WebDriver driver;

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @Author BaoTG
     * @package pageObject
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    public Components() throws InterruptedException {
        driver = CucumberTestRunner.getWebDriver();
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
        return driver.findElement(By.xpath("//input[@data-testid ='" + dataTestid + "']"));

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
        return driver.findElement(By.xpath("//h1[text()='" + text + "']"));
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
        return driver.findElement(By.xpath("//h2[text()='" + text + "']"));

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
        return driver.findElement(By.xpath("//h3[text()='" + text + "']"));

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
        return driver.findElement(By.xpath("//div[@data-testid='" + dataTestid + "']"));
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
    public List<WebElement> componentListDivDataTestID(String dataTestid) {
        return driver.findElements(By.xpath("//div[@data-testid='" + dataTestid + "']"));
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
        return driver.findElement(By.xpath("//button[@data-testid ='" + dataTestId + "']"));
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
        return driver.findElement(By.xpath("//button[contains(text(),'" + textValue +"')]"));
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
        return driver.findElements(By.xpath("//button[text()='" + textValue + "']"));
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
        return driver.findElement(By.xpath("//a[contains(@href, '" + href + "')]"));
    }

    /**
     * ----------------------------------------------------------------------------------------------------------------------------
     *
     * @param href is attributes find elements
     * @return list element <a></a>
     * -------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public List<WebElement> componentListHref(String href) {
        return driver.findElements(By.xpath("//a[contains(@href, '" + href + "')]"));
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
        return driver.findElement(By.xpath("//span[text()='" + spanName + "']"));
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
        return driver.findElement(By.xpath("//p[text()='" + text + "']"));
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
        return driver.findElement(By.xpath("//div[@class ='ltr-77ogkp']/button[@data-testid='" + actionName + "']"));
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
        return driver.findElement(By.xpath("//div[@role='" + roleName + "']"));
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
    public List<WebElement> componentsListDivRole(String roleName) {
        return driver.findElements(By.xpath("//div[@role='" + roleName + "']"));
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
        return driver.findElement(By.xpath("//div[@data-value='" + dataValue + "']"));
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
        return driver.findElement(By.xpath("//div[@role ='tooltip']//a[text()='" + linkText + "']"));
    }

    /**
     * -------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param linkText is is attributes find elements
     * @return element <a></a>
     * -------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentTextLink(String linkText) {
        return driver.findElement(By.xpath("//a[text()='" + linkText + "']"));
    }

    /**
     * -------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param linkText is is attributes find elements
     * @return element <a></a>
     * -------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public List<WebElement> componentListTextLink(String linkText) {
        return driver.findElements(By.xpath("//a[text()='" + linkText + "']"));
    }

    /**
     * -------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param linkText is is attributes find elements
     * @return list element <a></a>
     * -------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public List<WebElement> componentListTestId(String linkText) {
        return driver.findElements(By.xpath("//a[@data-testid='" + linkText + "']"));
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
        return driver.findElement(By.xpath("//div[contains(text(), '" + msgValue + "')]"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param msgValue is is attributes find elements
     * @return list element <div></div>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 07-04-2022
     */
    public List<WebElement> componentsListDivMsg(String msgValue) {
        return driver.findElements(By.xpath("//div[contains(text(), '" + msgValue + "')]"));
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
        return driver.findElement(By.xpath("//input[@id ='" + id + "']"));
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
    public List<WebElement> componentInputContainsID(String id) {
        return driver.findElements(By.xpath("//input[(contains(@id,'" + id + "'))]"));
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
        return driver.findElement(By.xpath("//a[@data-testid='" + className + "']"));
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
    public List<WebElement> componentListButtonDataTestID(String dataTestID) {
        return driver.findElements(By.xpath("//button[@data-testid='" + dataTestID + "']"));
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
        return driver.findElement(By.xpath("//input[@placeholder='" + attributesName + "']"));
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
    public List<WebElement> componentListSearchAttributes(String attributesName) {
        return driver.findElements(By.xpath("//svg[@=data-testid'" + attributesName + "']"));
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
        return driver.findElement(By.xpath("//textarea[@data-testid ='" + areaName + "']"));
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
    public WebElement componentTextAreaPlaceholder(String areaName) {
        return driver.findElement(By.xpath("//textarea[@placeholder ='" + areaName + "']"));
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
        return driver.findElement(By.xpath("//form[@data-testid ='" + formIdName + "']"));
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
        return driver.findElement(By.xpath("//input[@type='" + typeValue + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param typename is is attributes find elements
     * @return element <input></input>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentInputName(String typename) {
        return driver.findElement(By.xpath("//input[@name='" + typename + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param acceptValue is is attributes find elements
     * @return element <input></input>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentInputAccept(String acceptValue) {
        return driver.findElement(By.xpath("//input[contains(@accept, '" + acceptValue + "')]"));
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
        return driver.findElement(By.xpath("//span[@data-testid ='" + dataTestID + "']//img"));
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
        return driver.findElement(By.xpath("//span[@data-testid ='" + dataTestID + "']"));
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
        return driver.findElements(By.xpath("//div[@data-testid = '" + dataTestID + "']//button[2]"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @return element <span></span>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public List<WebElement> componentsSpanList() {
        return driver.findElements(By.xpath("//div[contains(@class, 'MuiListItemText')]//span"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @return element <button></button>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentsTagButton(String labelValue) {
        return driver.findElement(By.xpath("//button[@aria-label ='" + labelValue + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @return element <button></button>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentsActionButton(String controlsValue) {
        return driver.findElement(By.xpath("//button[@aria-controls ='" + controlsValue + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @return list element <button></button>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public List<WebElement> componentsListTagButton(String labelValue) {
        return driver.findElements(By.xpath("//button[contains(@aria-label,'" + labelValue + "')]"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @return list element <button></button>
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author BaoTG
     * @since 04-05-2022
     */
    public WebElement componentsInputChecked(String labelValue) {
        return driver.findElement(By.xpath("//input[@aria-label ='" + labelValue + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param dataTestID is datatestID of element
     * @return element h4 has dataTestID
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author baotg2
     * @since 04-05-2022
     */
    public WebElement componentH4DataTestID(String dataTestID) {
        return driver.findElement(By.xpath("//h4[@data-testid='" + dataTestID + "']/a"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param textValue is datatestID of element
     * @return element h4 has dataTestID
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author baotg2
     * @since 04-05-2022
     */
    public WebElement componentH4Text(String textValue) {
        return driver.findElement(By.xpath("//h4[text()='" + textValue + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param dataTestID is datatestID of element
     * @return list element h4 has dataTestID
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author baotg2
     * @since 04-05-2022
     */
    public List<WebElement> componentListH4DataTestID(String dataTestID) {
        return driver.findElements(By.xpath("//h4[@data-testid='" + dataTestID + "']/a"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param textValue is text of element
     * @return element h5 has text
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author baotg2
     * @since 04-05-2022
     */
    public WebElement componentH5Text(String textValue) {
        return driver.findElement(By.xpath("//h5[text()='" + textValue + "']"));
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param dataTestID is datatestID of element
     * @return element h5 has dataTestID
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author baotg2
     * @since 04-05-2022
     */
    public WebElement componentsListH5DataTestID(String dataTestID) {
        return driver.findElement(By.xpath("//h5[@data-testid='" + dataTestID + "']"));
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param itemProfile is ID of element
     * @return list of element have itemProfile
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author baotg2
     * @since 06-07-2022
     */
    public List<WebElement> componentsListElementByID(String itemProfile) {
        return driver.findElements(By.xpath("//*[@id='" + itemProfile + "']"));
    }

    /**
     * ------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @return list of element label
     * ------------------------------------------------------------------------------------------------------------------------------------------
     * @Author baotg2
     * @since 06-07-2022
     */
    public List<WebElement> componentsListLabel() {
        return driver.findElements(By.xpath("//label"));
    }

    /**
     * -------------------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param className is value of the class
     * @return list of element have class name
     * --------------------------------------------------------------------------------------------------------------------------------------------------------------
     * @Author baotg2
     * @since 06-07-2022
     */
    public List<WebElement> componentsListByClassName(String className) {
        return driver.findElements(By.className(className));
    }

    /**
     * ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param imgID is id of the image
     * @return element <img> has imgID
     * --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     * @Author baotg2
     * @since 06-07-2022
     */
    public WebElement componentImg(String imgID) {
        return driver.findElement(By.xpath("//img[@data-testid='" + imgID + "']"));
    }

    /**
     * --------------------------------------------------------------------------------------------------------------------------
     *
     * @param liTestID is id of the li element
     * @return element <li></li>
     * ---------------------------------------------------------------------------------------------------------------------------
     * @Author baotg2
     * @since 04-05-2022
     */
    public WebElement componentLi(String liTestID) {
        return driver.findElement(By.xpath("//li[@data-testid='" + liTestID + "']"));
    }
}