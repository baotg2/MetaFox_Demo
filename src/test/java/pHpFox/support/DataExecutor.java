package pHpFox.support;

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
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.*;

public class DataExecutor {

    private XSSFWorkbook workbook;
    private XSSFSheet sheet;

    private final String testDataFolder = "src/test/java/pHpFox/testdata/";
    private final String testDataFile = "v5DataProvider.xlsx";
    public String excelPathFile = testDataFolder + testDataFile;

    public void setExcelFile( String fileName , String sheetName ) throws IOException {
        File file = new File( fileName );
        File sameFileName = new File( fileName );
        if ( file.renameTo( sameFileName ) ) {
            FileInputStream inputStream = new FileInputStream( file );
            workbook = new XSSFWorkbook( inputStream );
            sheet = workbook.getSheet( sheetName );
        }
    }

    public String getCellData( int rowNumber , int cellNumber ) throws IOException {
        //getting the cell value from rowNumber and cell Number
        XSSFCell cell = sheet.getRow( rowNumber ).getCell( cellNumber );
        workbook.close();
        //returning the cell value as string
        return cell.getStringCellValue();
    }

    public int getRowCountInSheet() {
        return sheet.getLastRowNum() - sheet.getFirstRowNum();
    }

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

    public String getRandomPathDocuments() {
        String sb = null;
        for ( int i = 0 ; i < getPathDocument().size() ; i++ ) {
            int index = (int) ( getPathDocument().size() * Math.random() );
            sb = getPathDocument().get( index );
            sb = sb.replace( "\\" , "\\\\" );
        }
        return sb;
    }

    private ArrayList<String> getPathDocument() {
        File directory = new File( "src/test/java/pHpFox/testdata" );
        ArrayList<String> list = new ArrayList<>();
        // get all the files from a directory
        File[] fList = directory.listFiles();
        assert fList != null;
        for ( File file : fList ) {
            if ( file.isFile() ) {
                list.add( file.getAbsolutePath() );
                if ( file.getAbsolutePath().contains( "xlsx" ) || ( file.getAbsolutePath().contains( "gif" ) ) ) {
                    list.remove( file.getAbsolutePath() );
                }
            }
        }
        return list;
    }
}