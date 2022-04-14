package pHpFox.conf;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.openqa.selenium.By;

import java.io.*;

public class index extends constants {
    public static WebDriver driver;
    private static XSSFWorkbook workbook;
    private static XSSFSheet sheet;
    private static XSSFRow row;
    private static XSSFCell cell;


    public void setExcelFile(String fileName, String sheetName) throws IOException {
       File file = new File(fileName);
        FileInputStream inputStream = new FileInputStream(file);

        //creating workbook instance that refers to .xls file
        workbook=new XSSFWorkbook(inputStream);

        //creating a Sheet object
        sheet=workbook.getSheet(sheetName);
    }

    public String getCellData(int rowNumber,int cellNumber){
        //getting the cell value from rowNumber and cell Number
        cell =sheet.getRow(rowNumber).getCell(cellNumber);

        //returning the cell value as string
        return cell.getStringCellValue();
    }

    public int getRowCountInSheet(){
        int rowcount = sheet.getLastRowNum()-sheet.getFirstRowNum();
        return rowcount;
    }

    public void setCellValue(int rowNum,int cellNum,String cellValue,String excelFilePath) throws IOException {
        //creating a new cell in row and setting value to it
        sheet.getRow(rowNum).createCell(cellNum).setCellValue(cellValue);

        FileOutputStream outputStream = new FileOutputStream(excelFilePath);
        workbook.write(outputStream);
    }


    public void waitElement(By webElement) {
        WebDriverWait wait = new WebDriverWait(driver,120);
        wait.until(ExpectedConditions.visibilityOfAllElementsLocatedBy(webElement));
    }

    public void iWaitForSeconds(int seconds) throws InterruptedException {
        Thread.sleep(seconds * 1000);
    }
    public void OpenBroswer(String browserName){
        switch (browserName){
            case "FireFox":
                System.setProperty("webdriver.gecko.driver", "src/test/java/pHpFox/driver/geckodriver.exe");
                driver = new FirefoxDriver();
                driver.manage().window().maximize();
                break;
            default:
                System.setProperty("webdriver.chrome.driver", "src/test/java/pHpFox/driver/chromedriver.exe");
                driver = new ChromeDriver();
                driver.manage().window().maximize();
        }
    }
}
