/*
 * LoadRunner Java script. (Build: _build_number_)
 * 
 * Script Description: 
 *                     
 */

import lrapi.lr;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.WebDriverWait;
import lw.webTours.lr.*;

import java.io.IOException;

public class Actions
{

	public int init() throws Throwable {
		return 0;
	}//end of init


	public int action() throws Throwable {
        String httpUrl = "http://localhost:1080/WebTours/";
        String userName = "jojo";
        String password = "bean";
        String driverName = "webdriver.chrome.driver";// chorme
        String driverPath = "E:/PythonPoject/Python3.6/chromedriver.exe";// chorme

        // µÇÂ¼
        WebDriver driver = Login.login(userName, password, httpUrl, driverName, driverPath);

        // Ô¤¶©º½°àÐÅÏ¢
        Login.bookFlights(driver);

        Thread.sleep(2000);

        // È¡Ïûº½°à
        Login.cancelFlights(driver);

        Thread.sleep(2000);

        // ÍË³öµÇÂ¼
        Login.menu(driver, "SignOff Button");

        // ¹Ø±ÕÒ³Ãæ
        driver.quit();
		return 0;
	}//end of action


	public int end() throws Throwable {
		return 0;
	}//end of end
}
