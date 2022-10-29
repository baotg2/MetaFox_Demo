package metafox.support;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.awt.*;
import java.awt.datatransfer.StringSelection;
import java.awt.event.KeyEvent;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Iterator;


/**
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 *
 * @version 1.0.1
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 * @Author baotg2
 * @purpose: DataExecutor is class defined all function handle related to test data
 * @since 04-05-2022
 */
public class DataExecutor {

    private static Iterator<String> iterator;
    private XSSFWorkbook workbook;
    private XSSFSheet sheet;

    private final String testDataFolder = "src/test/resources/fixtures/";
    private final String testDataFile = "v5DataProvider.xlsx";
    private final String testDescriptionFile  = "blogDescription.txt";

    public String excelPathFile = testDataFolder + testDataFile;

    public String blogDescriptionFile = testDataFolder + testDescriptionFile;

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param fileName name's excel file
     * @param sheetName is sheet want to access/get data
     * @throws IOException occurs when an IO operation fails
     * @purpose get sheet from excel file
     * @Author baotg2
     * ----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    public void setExcelFile( String fileName , String sheetName ) throws IOException {
        File file = new File( fileName );
        File sameFileName = new File( fileName );
        if ( file.renameTo( sameFileName ) ) {
            FileInputStream inputStream = new FileInputStream( file );
            workbook = new XSSFWorkbook( inputStream );
            sheet = workbook.getSheet( sheetName );
        }
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param rowNumber is row want to access
     * @param cellNumber is cell on row
     * @return value of cell as string at rowNumber
     * @throws IOException occurs when an IO operation fails
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    public String getCellData( int rowNumber , int cellNumber ) throws IOException {
        //getting the cell value from rowNumber and cell Number
        XSSFCell cell = sheet.getRow( rowNumber ).getCell( cellNumber );
        workbook.close();
        return cell.getStringCellValue();
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @return the number on sheet
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    public int getRowCountInSheet() {
        return sheet.getLastRowNum() - sheet.getFirstRowNum();
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param stabName is tab name on xml file
     * @return value of tab name
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    public String readConstants( String stabName ) {
        String attributeName = null;
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();

        try {
            dbf.setFeature( XMLConstants.FEATURE_SECURE_PROCESSING , true );
            DocumentBuilder db = dbf.newDocumentBuilder();
            Document doc = db.parse( new File( "constants.xml" ) );
            doc.getDocumentElement().normalize();
            NodeList list = doc.getElementsByTagName( stabName );
            for ( int temp = 0 ; temp < list.getLength() ; temp++ ) {
                Node node = list.item( temp );
                if ( node.getNodeType() == Node.ELEMENT_NODE ) {
                    Element element = (Element) node;
                    attributeName = element.getTextContent();
                }
            }
        } catch ( ParserConfigurationException | IOException | org.xml.sax.SAXException e ) {
            e.printStackTrace();
        }
        return attributeName;
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @return random path file in test data folder
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    public String getRandomPathDocuments() {
        String sb = null;
        for ( int i = 0 ; i < getPathDocument().size() ; i++ ) {
            int index = (int) ( getPathDocument().size() * Math.random() );
            sb = getPathDocument().get( index );
            sb = sb.replace( "\\" , "\\\\" );
        }
        return sb;
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @return get all path file in test data folder
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    private ArrayList<String> getPathDocument() {
        File directory = new File( "src/test/resources/fixtures" );
        ArrayList<String> list = new ArrayList<>();
        File[] fList = directory.listFiles();
        assert fList != null;
        for ( File file : fList ) {
            if ( file.isFile() ) {
                list.add( file.getAbsolutePath() );
                if ( file.getAbsolutePath().contains( "xlsx" ) || ( file.getAbsolutePath().contains( "gif" ) || ( file.getAbsolutePath().contains( "json" )) || ( file.getAbsolutePath().contains( "txt" )))) {
                    list.remove( file.getAbsolutePath() );
                }
            }
        }
        return list;
    }

    /**-------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param fileLocation is path file uploaded
     * @Author baotg2
     * -------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-14-2022
     */
    public void uploadFile(String fileLocation)
    {
        try
        {
            setClipboardData(fileLocation);
            Robot robot = new Robot();
            // Cmd + Tab is needed since it launches a Java app and the browser looses focus
            robot.delay(500);
            robot.keyPress(KeyEvent.VK_META);
            robot.keyPress(KeyEvent.VK_SHIFT);
            robot.keyPress(KeyEvent.VK_G);
            robot.delay(500);
            robot.keyPress(KeyEvent.VK_META);
            robot.keyPress(KeyEvent.VK_V);
            robot.keyRelease(KeyEvent.VK_ENTER);
            robot.delay(500);
            robot.keyRelease(KeyEvent.VK_ENTER);

        }
        catch (Exception exp)
        {
            exp.printStackTrace();
        }
    }

    /**-------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param string is data want to copy
     * @Author baotg2
     * -------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-14-2022
     */
    private void setClipboardData(String string)
    {
        // TODO Auto-generated method stub
        StringSelection stringSelection = new StringSelection(string);
        Toolkit.getDefaultToolkit().getSystemClipboard().setContents(stringSelection, null);
    }

    public String readFileAsString(String fileName, int intLine)throws Exception
    {
        String data;
        data = Files.readAllLines(Paths.get(fileName)).get(intLine);
        return data;
    }
}