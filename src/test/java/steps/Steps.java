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
import pages.BasicCalculatorPage;

import java.nio.file.Paths;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;

/**
 * All BDD steps
 */
public class Steps {
    public WebDriver webDriver;
    private BasicCalculatorPage calculatorPage;

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
            webDriver.navigate().to("https://testsheepnz.github.io/BasicCalculator.html");
            calculatorPage = new BasicCalculatorPage(webDriver);
        }
    }

    @After
    public void quitDriver() {
        if (webDriver != null) {
            webDriver.close();
            webDriver.quit();
        }
    }

    @Given("I select {string} build")
    public void iSelectXBuild(String build) {
        calculatorPage.selectBuild(build);
    }

    @And("first number is {string}")
    public void firstNumberIsX(String number) {
        if (calculatorPage.getFirstNumber().isDisplayed()) {
            calculatorPage.getFirstNumber().sendKeys(number);
        } else {
            Assert.fail("First number field is not displayed!");
        }
    }

    @And("second number is {string}")
    public void secondNumberIsX(String number) {
        if (calculatorPage.getSecondNumber().isDisplayed()) {
            calculatorPage.getSecondNumber().sendKeys(number);
        } else {
            Assert.fail("Second number field is not displayed!");
        }
    }

    @And("operation is {string}")
    public void operationIsX(String operation) {
        new Select(calculatorPage.getOperationSelector()).selectByVisibleText(operation);
    }

    @And("integers only is {}")
    public void integersOnlyIsX(boolean intOnly) {
        if (intOnly) {
            calculatorPage.getIntegerCheckBox().click();
        }
    }

    @Then("I click on Calculate button")
    public void iClickOnCalculateButton() {
        if (calculatorPage.getCalculateButton().isDisplayed()) {
            calculatorPage.getCalculateButton().click();
            new WebDriverWait(webDriver, 5).until(ExpectedConditions.invisibilityOfElementLocated(calculatorPage.errorMessageBox));
        } else {
            Assert.fail("Calculate button is not displayed!");
        }

    }

    @And("the answer should be equal to {string}")
    public void theAnswerShouldBeEqualToX(String answer) {
        assertThat(calculatorPage.getAnswer().getAttribute("value"), is(answer));
    }

    @And("error message should be displayed and matched with {string}")
    public void errorMessageShouldBeDisplayedAndMatchedWithX(String error) {
        if (calculatorPage.getErrorMessage().isDisplayed()) {
            assertThat(calculatorPage.getErrorMessage().getText(), is(error));
        } else {
            Assert.fail("Error message is not displayed!");
        }

    }

    @And("Clear button should be enable")
    public void clearButtonShouldBeEnable() {
        if (!calculatorPage.getClearButton().isEnabled()) {
            Assert.fail("Clear button is not enabled!");
        }
    }

    @And("I click on Clear button")
    public void iClickOnClearButton() {
        calculatorPage.getClearButton().click();
    }

    @And("integers only checkbox should be enable")
    public void integersOnlyCheckboxShouldBeEnable() {
        if (!calculatorPage.getIntegerCheckBox().isEnabled()) {
            Assert.fail("Integers only checkbox is not enabled!");
        }
    }

    @And("integers only checkbox should be hide")
    public void integersOnlyCheckboxShouldBeHide() {
        if (calculatorPage.getIntegerCheckBox().isDisplayed()) {
            Assert.fail("Integers only checkbox is displayed!");
        }
    }
}
