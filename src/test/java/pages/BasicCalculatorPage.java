package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

public class BasicCalculatorPage {
    private WebDriver driver;

    private By buildSelector = By.id("selectBuild");
    private By operationSelector = By.id("selectOperationDropdown");
    private By firstNumber = By.id("number1Field");
    private By secondNumber = By.id("number2Field");
    private By answer = By.id("numberAnswerField");
    private By errorMessage = By.id("errorMsgField");
    private By clearButton = By.id("clearButton");
    private By calculateButton = By.id("calculateButton");
    private By integerCheckBox = By.id("integerSelect");
    public By errorMessageBox = By.id("calculatingForm");


    public BasicCalculatorPage (WebDriver driver) {
        this.driver = driver;
    }

    public void selectBuild(String build) {
        new Select(driver.findElement(buildSelector)).selectByVisibleText(build);
    }

    public WebElement getBuildSelector() {
        return driver.findElement(buildSelector);
    }

    public WebElement getOperationSelector() {
        return driver.findElement(operationSelector);
    }

    public WebElement getFirstNumber() {
        return driver.findElement(firstNumber);
    }

    public WebElement getSecondNumber() {
        return driver.findElement(secondNumber);
    }

    public WebElement getAnswer() {
        return driver.findElement(answer);
    }

    public WebElement getErrorMessage() {
        return driver.findElement(errorMessage);
    }

    public WebElement getClearButton() {
        return driver.findElement(clearButton);
    }

    public WebElement getCalculateButton() {
        return driver.findElement(calculateButton);
    }

    public WebElement getIntegerCheckBox() {
        return driver.findElement(integerCheckBox);
    }
}
