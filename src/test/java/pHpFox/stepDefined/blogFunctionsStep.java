package pHpFox.stepDefined;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import pHpFox.conf.index;
import pHpFox.pageObject.blogPages;
import pHpFox.pageObject.sideMenuPage;

import static org.junit.Assert.assertTrue;

public class blogFunctionsStep extends index {
    sideMenuPage sideMenuPage = new sideMenuPage();
    blogPages blogPages = new blogPages();
    @And("^I want to access \"([^\"]*)\" and add new blog has title is \"([^\"]*)\", (Yes|No) add photo, has description is \"([^\"]*)\"$")
    public void userAddnewBlog(String sidemenu, String titleBlog, String addPhoto, String description) throws InterruptedException {
        iWaitForSeconds(15);
        sideMenuPage.parentMenuSide(driver, sidemenu).click();
        waitElement(By.xpath("//a[text()='Create New Blog']"));
        blogPages.btn_CreateNewBlog(driver).click();
        waitElement(By.xpath("//h1"));
        assertTrue(blogPages.txt_addnewBlog(driver).getText().contains("Add New Blog"));
        blogPages.txt_titleBlog(driver).sendKeys(titleBlog);
        if (addPhoto.equals("Yes")){
            blogPages.formUploadimage(driver).sendKeys("D:\\WorkSpace_BaoTran\\pHpDemo\\src\\test\\java\\pHpFox\\testdata\\imageTest.jpg");
        }
        //blogPages.txt_post(driver).click();
        driver.findElement(By.xpath("//div[@role='textbox']")).sendKeys(description);
        blogPages.btn_add(driver, "Publish").click();
        waitElement(By.xpath("//div[@data-testid='itemTitle']/h1"));
        assertTrue(blogPages.titleBlogAdded(driver).getText().contains(titleBlog));
    }

    @And("^I want to access \"([^\"]*)\" and search \"([^\"]*)\"$")
    public void searchBlog(String sideName, String blogName) throws InterruptedException {
        iWaitForSeconds(10);
        sideMenuPage.parentMenuSide(driver, sideName).click();
        blogPages.search_blog(driver).click();
        blogPages.search_blog(driver).sendKeys(blogName);
        blogPages.search_blog(driver).sendKeys(Keys.ENTER);
        assertTrue(blogPages.searchResultTilte(driver).getText().contains("Search Results"));
        waitElement(By.xpath("//div/h4"));
        int size = blogPages.tableSearchResult(driver).size();
        if (size > 0){
            for(int i =0; i<size; i++){
                assertTrue(blogPages.tableSearchResult(driver).get(i).getText().contains(blogName));
            }
        }
    }

    @Then("I want to edit blog")
    public void iWantToEdit() throws InterruptedException {
        waitElement(By.xpath("//span[@class = 'ico-dottedmore-vertical-o ltr-1uo2akd']"));
        blogPages.select_more(driver).click();
        if (blogPages.edit_blog(driver).isDisplayed()){
            blogPages.edit_blog(driver).click();
            iWaitForSeconds(3);
        }
    }
}
