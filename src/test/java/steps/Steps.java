package steps;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.nio.file.Paths;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;

/**
 * All BDD steps
 */
public class Steps {
    private WebDriver webDriver;

    @Before
    public void setDriver() {
        System.setProperty("webdriver.chrome.driver",
                Paths.get("src/test/resources/drivers/chromedriver.exe").toString());
        ChromeOptions options = new ChromeOptions();
        options.addArguments("--headless");
        options.addArguments("--disable-gpu");
        options.addArguments("--window-size=1400,800");
        if (webDriver == null) {
            webDriver = new ChromeDriver(options);
        }
    }

    @After
    public void quitDriver() {
        if (webDriver != null) {
            webDriver.close();
            webDriver.quit();
        }
    }

    @Given("I am on the Basic calculator page")
    public void iAmOnTheBasicCalculatorPage() {
        webDriver.navigate().to("https://testsheepnz.github.io/BasicCalculator.html");
    }

    @Then("I select {string} build")
    public void iSelectXBuild(String build) {
        new Select(webDriver.findElement(By.id("selectBuild"))).selectByVisibleText(build);
    }

    @And("first number is {string}")
    public void firstNumberIsX(String number) {
        if (webDriver.findElement(By.id("number1Field")).isDisplayed()) {
            webDriver.findElement(By.id("number1Field")).sendKeys(number);
        } else {
            Assert.fail("First number field is not displayed!");
        }
    }

    @And("second number is {string}")
    public void secondNumberIsX(String number) {
        if (webDriver.findElement(By.id("number2Field")).isDisplayed()) {
            webDriver.findElement(By.id("number2Field")).sendKeys(number);
        } else {
            Assert.fail("Second number field is not displayed!");
        }
    }

    @And("operation is {string}")
    public void operationIsX(String operation) {
        new Select(webDriver.findElement(By.id("selectOperationDropdown"))).selectByVisibleText(operation);
    }

    @And("integers only is {}")
    public void integersOnlyIsX(boolean intOnly) {
        if (intOnly) {
            webDriver.findElement(By.id("integerSelect")).click();
        }
    }

    @Then("I click on Calculate button")
    public void iClickOnCalculateButton() {
        if (webDriver.findElement(By.id("calculateButton")).isDisplayed()) {
            webDriver.findElement(By.id("calculateButton")).click();
        } else {
            Assert.fail("Calculate button is not displayed!");
        }

    }

    @And("the answer should be equal to {string}")
    public void theAnswerShouldBeEqualToX(String answer) {
        new WebDriverWait(webDriver, 5).until(ExpectedConditions.invisibilityOfElementLocated(By.id("calculatingForm")));
        assertThat(webDriver.findElement(By.id("numberAnswerField")).getText(), is(answer));
    }

    @And("error message should be displayed and matched with {string}")
    public void errorMessageShouldBeDisplayedAndMatchedWithX(String error) {
        if (webDriver.findElement(By.id("errorMsgField")).isDisplayed()) {
            assertThat(webDriver.findElement(By.id("errorMsgField")).getText(), is(error));
        } else {
            Assert.fail("Error message is not displayed!");
        }

    }

    @And("Clear button should be enable")
    public void clearButtonShouldBeEnable() {
        if (!webDriver.findElement(By.id("clearButton")).isEnabled()) {
            Assert.fail("Clear button is not enabled!");
        }
    }

    @And("I click on Clear button")
    public void iClickOnClearButton() {
        webDriver.findElement(By.id("clearButton")).click();
    }

    @And("integers only checkbox should be enable")
    public void integersOnlyCheckboxShouldBeEnable() {
        if (!webDriver.findElement(By.id("integerSelect")).isEnabled()) {
            Assert.fail("Integers only checkbox is not enabled!");
        }
    }
}
