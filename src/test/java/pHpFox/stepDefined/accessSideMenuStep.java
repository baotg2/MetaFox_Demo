package pHpFox.stepDefined;


import io.cucumber.java.en.Then;
import pHpFox.conf.index;
import pHpFox.pageObject.loginPage;
import pHpFox.pageObject.sideMenuPage;

import java.io.IOException;

import static org.junit.Assert.assertTrue;

public class accessSideMenuStep extends index {
    sideMenuPage sideMenuPage = new sideMenuPage();
    @Then("I want to access {string} menu at {string}")
    public void iWantToAccessMenu(String moudule, String sheetname) throws InterruptedException, IOException {
        loginPage loginPage = new loginPage();
        iWaitForSeconds(5);
        setExcelFile(excelPathFile, sheetname);
        for(int i=1; i<=getRowCountInSheet(); i++){
            if(getCellData(i, 2).toLowerCase().equals(moudule)){
                assertTrue(sideMenuPage.parentMenuSide(driver, moudule).getText().toLowerCase().contains(moudule));
                sideMenuPage.parentMenuSide(driver,moudule).click();
                boolean ass =sideMenuPage.childMenuSide(driver,getCellData(i,3)).isDisplayed();
                if(ass){
                    loginPage.btn_HomePage(driver).click();
                }
                else {
                    break;
                }
            }
        }

    }
}
