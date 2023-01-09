package metafox.webdriver;

import metafox.support.Utility;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.openqa.selenium.MutableCapabilities;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.FileReader;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class WebDriverFactory {

    private static volatile WebDriverFactory instance;
    private final JSONObject testConfig = this.parseWebDriverConfig();

    public static final Logger LOGGER = LoggerFactory.getLogger(WebDriverFactory.class);

    private WebDriverFactory() {
    }

    public static WebDriverFactory getInstance() {
        if (instance == null) {
            synchronized (WebDriverFactory.class) {
                if (instance == null) {
                    instance = new WebDriverFactory();
                }
            }
        }
        return instance;
    }

    private JSONObject parseWebDriverConfig() {
        JSONParser parser = new JSONParser();
        String conf = System.getProperty("conf", "single");
        String file = String.format("src/test/resources/conf/%s.conf.json", conf);
        String capabilitiesConfigFile = System.getProperty("caps", file);
        try {
            return (JSONObject) parser.parse(new FileReader(capabilitiesConfigFile));
        } catch (IOException | ParseException var6) {
            throw new Error("Unable to parse capabilities file " + capabilitiesConfigFile, var6);
        }
    }

    public List<JSONObject> getPlatforms() {
        JSONArray environments = (JSONArray) testConfig.get("environments");
        List<JSONObject> platforms = new ArrayList<>();
        for (Object obj : environments) {
            JSONObject singleConfig = Utility.getCombinedCapability((Map<String, String>) obj, testConfig);
            platforms.add(singleConfig);
        }
        return platforms;
    }

    public WebDriver createWebDriverForPlatform(JSONObject platform, String testName) {
        try {

            String browser;
            String conf = System.getProperty("conf", "single");

            if (conf.equals("local") && platform.containsKey("browserName")) {
                browser = platform.get("browserName").toString();
                if (browser.equals("chrome")) {
                    return createLocalChromeDriver();
                }

                if (browser.equals("firefox")) {
                    return createLocalFireFox();
                }
            }

            String URL = String.format("https://%s/wd/hub", testConfig.get("server"));

            DesiredCapabilities caps = new DesiredCapabilities(platform);
          

            return new RemoteWebDriver(new URL(URL), caps);
        } catch (MalformedURLException var4) {
            throw new Error("Unable to create WebDriver", var4);
        }
    }


    public WebDriver createLocalChromeDriver() {
        LOGGER.info("Creating new chrome driver");

        ChromeOptions options = new ChromeOptions();
        options.addArguments("use-fake-device-for-media-stream");
        options.addArguments("use-fake-ui-for-media-stream");
        options.addArguments("--window-size=1440,980");
        options.setHeadless(isHeadless());
        options.setAcceptInsecureCerts(true);

        Map<String, Object> prefs = new HashMap<>();
        prefs.put("profile.default_content_setting_values.media_stream_mic", 1);
        prefs.put("profile.default_content_setting_values.media_stream_camera", 1);
        prefs.put("profile.default_content_setting_values.geolocation", 1);
        prefs.put("profile.default_content_setting_values.notifications", 1);
        options.setExperimentalOption("prefs", prefs);

        return new ChromeDriver(options);
    }

    public boolean isHeadless() {
        return System.getProperty("headless", "false").equals("true");
    }

    public WebDriver createLocalFireFox() {
        LOGGER.info("Creating new firefox driver");

        FirefoxOptions options = new FirefoxOptions();
        FirefoxProfile profile = new FirefoxProfile();
        options.setProfile(profile);
        options.setHeadless(isHeadless());
        options.addPreference("dom.webnotifications.enabled", true);
        options.addPreference("geo.enabled", true);
        options.addPreference("geo.provider.use_corelocation", true);
        options.addPreference("geo.prompt.testing", true);
        options.addPreference("geo.prompt.testing.allow", true);
        return new FirefoxDriver(options);
    }
}
