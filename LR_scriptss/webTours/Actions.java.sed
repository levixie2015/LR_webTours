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

        // ��¼
        WebDriver driver = Login.login(userName, password, httpUrl, driverName, driverPath);

        // Ԥ��������Ϣ
        Login.bookFlights(driver);

        Thread.sleep(2000);

        // ȡ������
        Login.cancelFlights(driver);

        Thread.sleep(2000);

        // �˳���¼
        Login.menu(driver, "SignOff Button");

        // �ر�ҳ��
        driver.quit();
		return 0;
	}//end of action


	public int end() throws Throwable {
		return 0;
	}//end of end
}
