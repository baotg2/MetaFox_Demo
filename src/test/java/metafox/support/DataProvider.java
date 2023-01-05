package metafox.support;

import kong.unirest.JsonNode;
import kong.unirest.Unirest;
import net.datafaker.Faker;
import org.apache.commons.io.FileUtils;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.json.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.annotation.Nonnull;
import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.awt.*;
import java.awt.datatransfer.StringSelection;
import java.awt.event.KeyEvent;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;
import java.util.*;
import java.util.concurrent.ThreadLocalRandom;
import java.util.stream.Collectors;


/**
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 *
 * @version 1.0.1
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 * @Author baotg2
 * @purpose: DataExecutor is class defined all function handle related to test data
 * @since 04-05-2022
 */
public class DataProvider {

    private XSSFWorkbook workbook;
    private XSSFSheet sheet;

    private static final Logger LOGGER = LoggerFactory.getLogger(DataProvider.class);

    private static final String pathToFixtures = "src/test/resources/fixtures";
    private static final String testDataFile = "v5DataProvider.xlsx";

    private final String testDataFolder = "src/test/resources/fixtures/";
    private final String testDataFile1 = "v5DataProvider.xlsx";
    public String excelPathFile = testDataFolder + testDataFile1;

    public static final Faker faker = new Faker();

    private static Map<String, String> rowToMap(XSSFRow row, List<String> header, DataFormatter formatter) {
        Map<String, String> data = new HashMap<String, String>();
        row.forEach(cell -> {
            if (cell != null) {
                int index = cell.getColumnIndex();
                if (index < header.size()) {
                    data.put(header.get(index), formatter.formatCellValue(cell).trim());
                }
            }
        });
        return data;
    }

    public static JSONObject fromJsonObject(String name) throws IOException, ParseException {
        String filename = String.format("%s/%s.json", pathToFixtures, name);
        return (JSONObject) new JSONParser().parse(new FileReader(filename));
    }

    public static JSONArray fromJsonArray(String name) throws IOException {
        String filename = String.format("%s/%s.json", pathToFixtures, name);
        String source = FileUtils.readFileToString(new File(filename), "utf-8");
        return new JSONArray(source);
    }


    public static List<Map<String, String>> fromSheet(String sheetName) throws IOException {
        return fromSheet(testDataFile, sheetName);
    }

    public static List<Map<String, String>> fromSheet(String fileName, String sheetName) throws IOException {

        File file = new File(String.format("%s/%s", pathToFixtures, fileName));
        FileInputStream inputStream = new FileInputStream(file);
        XSSFWorkbook workbook = new XSSFWorkbook(inputStream);
        XSSFSheet sheet = workbook.getSheet(sheetName);
        DataFormatter formatter = new DataFormatter();

        List<String> header = new ArrayList<String>();
        List<Map<String, String>> rows = new ArrayList<Map<String, String>>();

        if (sheet.getFirstRowNum() == 0) {
            sheet.getRow(0).forEach(cell -> header.add(formatter.formatCellValue(cell)));
        }

        for (int i = 1; i < sheet.getLastRowNum(); ++i) {
            XSSFRow sheetRow = sheet.getRow(i);
            if (sheetRow != null) {
                Map<String, String> row1 = rowToMap(sheetRow, header, formatter);
                if (row1.get("id") != null) {
                    rows.add(row1);
                }

            }
        }

        inputStream.close();
        workbook.close();
        return rows;
    }

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

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param stabName is tab name on xml file
     * @return value of tab name
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    public static String readConstants(String stabName) {
        String attributeName = null;
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();

        try {
            dbf.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true);
            DocumentBuilder db = dbf.newDocumentBuilder();
            Document doc = db.parse(new File("constants.xml"));
            doc.getDocumentElement().normalize();
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

    public static String getSinglePhoto() {
        return getFile("photo");
    }

    public static String getSingleVideo() {
        return getFile("video");
    }
    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param folder name of folder in fixtures resources
     * @return Get a single file in particular photo
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    public static String getFile(String folder) {
        folder = pluralize(folder);

        File[] files = new File(String.format("%s/%s", pathToFixtures, folder)).listFiles();

        assert files != null;

        Optional<String> file = Arrays.stream(files)
                .map(File::getAbsolutePath)
                .sorted((o1, o2) -> ThreadLocalRandom.current().nextInt(-1, 2))
                .findAny();


        assert file.isPresent();

        return file.get().replace("\\", "\\\\");
    }

    /**
     * @param folder name of folder in ./fixtures
     * @param limit  max file limit
     */
    public static List<String> getFiles(@Nonnull String folder, int limit) {
        folder = pluralize(folder);
        File[] allFiles = new File(String.format("%s/%s", pathToFixtures, folder)).listFiles();

        assert allFiles != null;

        List<String> files = Arrays.stream(allFiles)
                .map(File::getAbsolutePath)
                .sorted((o1, o2) -> ThreadLocalRandom.current().nextInt(-1, 2))
                .collect(Collectors.toList());

        return files.subList(0, Math.min(limit, files.size()));
    }

    /**
     * -------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param fileLocation is path file uploaded
     * @Author baotg2
     * -------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-14-2022
     */
    public static void uploadFile(String fileLocation) {
        try {
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

        } catch (Exception exp) {
            exp.printStackTrace();
        }
    }

    /**
     * -------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param string is data want to copy
     * @Author baotg2
     * -------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-14-2022
     */
    private static void setClipboardData(String string) {
        // TODO Auto-generated method stub
        StringSelection stringSelection = new StringSelection(string);
        Toolkit.getDefaultToolkit().getSystemClipboard().setContents(stringSelection, null);
    }

    private static String pluralize(@Nonnull String name) {
        switch (name) {
            case "photo":
                return "photos";
            case "video":
                return "videos";
            case "image":
                return "images";
            default:
                return name;
        }
    }

    public static Map<String, String> getUser(String username) throws InterruptedException, IOException {

        Optional<Map<String, String>> user = fromSheet("users")
                .stream()
                .filter(row -> row.get("username").equalsIgnoreCase(username)).findFirst();

        if (!user.isPresent()) throw new InterruptedException("Failed logged in as " + username);

        return user.get();
    }

    public static String getUserAccessToken(@Nonnull String username) throws IOException, InterruptedException {

        String accessToken = UserToken.getUserToken(username);

        if (accessToken != null) {
            return accessToken;
        }

        Map<String, String> user = getUser(username);

        JSONObject body = new JSONObject();

        body.put("username", user.get("email"));
        body.put("password", user.get("password"));
        body.put("grant_type", "password");

        String url = apiUrl("/user/login");

        JsonNode response = Unirest.post(url)
                .header("accept", "application/json")
                .header("Content-Type", "application/json")
                .body(body)
                .asJson()
                .getBody();

//        LOGGER.warn("RESPONSE {}", response);

        Object token = response.getObject().get("access_token");

        if (token == null) throw new InterruptedException("Failed that user login " + username);

        UserToken.addUserToken(username, token.toString(), (int) response.getObject().get("expires_in"));

        return token.toString();
    }

    public static String getAuthCookieName() {
        return String.format("%s%s", getSiteHashed(), "token");
    }


    public static String getSiteHashed() {
        return System.getProperty("MFOX_SITE_HASHED", "yA0JuFD6n6zkC1");
    }

    public static String apiUrl(String url) {
        return String.format("%s/api/v1%s", System.getenv("BASE_URL"), url);
    }
}