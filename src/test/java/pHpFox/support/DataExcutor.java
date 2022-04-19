package pHpFox.support;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
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

public class DataExcutor {
    public Map<String, Map<String, String>> setMapData(String fileName, String sheetName) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(fileName);
        Workbook workbook = new XSSFWorkbook(fileInputStream);
        Sheet sheet = workbook.getSheet(sheetName);
        int lastRow = sheet.getLastRowNum();

        Map<String, Map<String, String>> excelFileMap = new HashMap<String, Map<String,String>>();

        Map<String, String> dataMap = new HashMap<String, String>();

        //Looping over entire row
        for(int i=0; i<=lastRow; i++){

            Row row = sheet.getRow(i);

            //1st Cell as Value
            Cell valueCell = row.getCell(1);

            //0th Cell as Key
            Cell keyCell = row.getCell(0);

            String value = valueCell.getStringCellValue().trim();
            String key = keyCell.getStringCellValue().trim();

            //Putting key & value in dataMap
            dataMap.put(key, value);

            //Putting dataMap to excelFileMap
            excelFileMap.put("DataSheet", dataMap);
        }
        //Returning excelFileMap
        return excelFileMap;
    }

    public String readConstants(String stabName){
        String attributeName = null ;
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();

        try {
            dbf.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true);

            DocumentBuilder db = dbf.newDocumentBuilder();

            Document doc = db.parse(new File("constants.xml"));

            doc.getDocumentElement().normalize();

            System.out.println("Root Element :" + doc.getDocumentElement().getNodeName());
            System.out.println("------");

            NodeList list = doc.getElementsByTagName(stabName);

            for (int temp = 0; temp < list.getLength(); temp++) {

                Node node = list.item(temp);

                if (node.getNodeType() == Node.ELEMENT_NODE) {

                    Element element = (Element) node;
                    attributeName = element.getTextContent();
                }
            }
        } catch (ParserConfigurationException | IOException | org.xml.sax.SAXException e) {
            e.printStackTrace();
        }
        return attributeName;
    }

    private ArrayList<String> getPathDocument() throws IOException {
        File directory = new File("src/test/java/pHpFox/testdata");
        List<File> resultList = new ArrayList<File>();
        ArrayList<String> list = new ArrayList<String>();
        // get all the files from a directory
        File[] fList = directory.listFiles();
        resultList.addAll(Arrays.asList(fList));
        for (File file : fList) {
            if (file.isFile()) {
                list.add(file.getAbsolutePath());
                if(file.getAbsolutePath().contains("v5DataProvider.xlsx")){
                    list.remove(file.getAbsolutePath());
                }
            }
        }
        return list;
    }


    public String getAlphaNumericString() throws IOException {
        String sb = null;

        for (int i = 0; i < getPathDocument().size(); i++) {
            int index
                    = (int)(getPathDocument().size()
                    * Math.random());
            sb = getPathDocument().get(index);
        }
        return sb;
    }
}
