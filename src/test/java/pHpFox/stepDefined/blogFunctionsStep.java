package pHpFox.stepDefined;

import io.cucumber.java.en.And;
import org.openqa.selenium.By;
import pHpFox.conf.index;
import pHpFox.pageObject.blogPages;
import pHpFox.pageObject.sideMenuPage;

import java.util.Optional;

import static org.junit.Assert.assertTrue;

public class blogFunctionsStep extends index {
    sideMenuPage sideMenuPage = new sideMenuPage();
    blogPages blogPages = new blogPages();
    @And("^I want to access \"([^\"]*)\" and add new blog has title is \"([^\"]*)\", (Yes|No) add photo$")
    public void userAddnewBlog(String sidemenu, String titleBlog, Optional<String> addPhoto) throws InterruptedException {
        iWaitForSeconds(15);
        sideMenuPage.parentMenuSide(driver, sidemenu).click();
        waitElement(By.xpath("//a[text()='Create New Blog']"));
        blogPages.btn_CreateNewBlog(driver).click();
        waitElement(By.xpath("//h1"));
        assertTrue(blogPages.txt_addnewBlog(driver).getText().contains("Add New Blog"));
        blogPages.txt_titleBlog(driver).sendKeys(titleBlog);
        if (addPhoto.equals("Yes")){
            blogPages.btn_add(driver, "Add Photo").click();

        }
    }
}
