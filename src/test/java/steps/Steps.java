package steps;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
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
    //private CalculatorPage calculatorPage;
    private WebDriver webDriver;

    @Before
    public void setDriver() {
        System.setProperty("webdriver.chrome.driver",
                Paths.get("src/test/resources/drivers/chromedriver.exe").toString());
        if (webDriver == null) {
            webDriver = new ChromeDriver();
        }
    }

    @After
    public void quitDriver() {
        if (webDriver!=null) {
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
        Select buildSelector = new Select(webDriver.findElement(By.id("selectBuild")));
        buildSelector.selectByVisibleText(build);
    }

    @And("first number is {string}")
    public void firstNumberIsX(String number) {
        webDriver.findElement(By.id("number1Field")).sendKeys(number);
    }

    @And("second number is {string}")
    public void secondNumberIsX(String number) {
        webDriver.findElement(By.id("number2Field")).sendKeys(number);
    }

    @And("operation is {string}")
    public void operationIsX(String operation) {
        Select operationSelector = new Select(webDriver.findElement(By.id("selectOperationDropdown")));
        operationSelector.selectByVisibleText(operation);
    }

    @And("integers only is {}")
    public void integersOnlyIsX(boolean intOnly) {
        if (intOnly) {
            webDriver.findElement(By.id("integerSelect")).click();
        }
    }

    @Then("I click on Calculate button")
    public void iClickOnCalculateButton() {
        webDriver.findElement(By.id("calculateButton")).click();
    }

    @And("the answer should be equal to {string}")
    public void theAnswerShouldBeEqualToX (String answer) {
        new WebDriverWait(webDriver, 5).until(ExpectedConditions.invisibilityOfElementLocated(By.id("calculatingForm")));
        String answerText = webDriver.findElement(By.id("numberAnswerField")).getAttribute("value");
        assertThat(answerText,is(answer));
    }
}
