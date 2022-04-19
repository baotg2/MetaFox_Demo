package pHpFox.conf;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import pHpFox.Constant;

import java.io.*;

public class Index {
    public static WebDriver driver;
    private XSSFWorkbook workbook;
    private XSSFSheet sheet;
    private XSSFCell cell;

    Constant constant = new Constant();
    public void setExcelFile(String fileName, String sheetName) throws IOException {
       File file = new File(fileName);
       File sameFileName = new File(fileName);
       if (file.renameTo(sameFileName)){
           FileInputStream inputStream = new FileInputStream(file);
           workbook=new XSSFWorkbook(inputStream);
           sheet=workbook.getSheet(sheetName);
       }
    }

    public String getCellData(int rowNumber,int cellNumber) throws IOException {
        //getting the cell value from rowNumber and cell Number
        cell =sheet.getRow(rowNumber).getCell(cellNumber);
        workbook.close();
        //returning the cell value as string
        return cell.getStringCellValue();
    }

    public int getRowCountInSheet(){
        int rowCount = sheet.getLastRowNum()-sheet.getFirstRowNum();
        return rowCount;
    }

    public void setCellValue(int rowNum,int cellNum,String cellValue,String excelFilePath) throws IOException {
        //creating a new cell in row and setting value to it
        sheet.getRow(rowNum).createCell(cellNum).setCellValue(cellValue);

        FileOutputStream outputStream = new FileOutputStream(excelFilePath);
        workbook.write(outputStream);
    }

    public void openBrowser(String browserName){
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

        driver.get(constant.URL);

    }


}
