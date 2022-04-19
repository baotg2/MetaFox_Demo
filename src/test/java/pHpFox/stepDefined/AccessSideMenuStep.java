package pHpFox.stepDefined;


import io.cucumber.java.en.Then;
import pHpFox.Constant;
import pHpFox.conf.Index;
import pHpFox.pageObject.Components;
import java.io.IOException;
import static org.junit.Assert.assertTrue;
import static pHpFox.conf.Index.driver;

public class AccessSideMenuStep{
    Components components = new Components();
    Constant constant = new Constant();
    Index index = new Index();

    @Then("I want to access {string}")
    public void iWantToAccessMenu(String module) throws InterruptedException, IOException {
        index.setExcelFile(constant.excelPathFile, "pages");
        for(int i=1; i<=index.getRowCountInSheet(); i++){
            if(index.getCellData(i, 2).toLowerCase().equals(module)){
                components.componentLinkText(module).click();
                assertTrue(components.componentLinkText(index.getCellData(i,3)).isDisplayed());
                if(!index.getCellData(i, 2).toLowerCase().equals(module)){
                    driver.navigate().back();
                }
            }
        }

    }
}
