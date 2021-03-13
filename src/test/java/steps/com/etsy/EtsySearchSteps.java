package steps.com.etsy;

import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import pages.com.etsypages.EtsyHomePage;
import utils.BrowserUtils;
import utils.Driver;

public class EtsySearchSteps {

    WebDriver driver;
    EtsyHomePage homePage;

    @Before
    public void beforeScenario(){
        System.out.println("Before Anotation.");
    }

   @Before("@tc2")
    public void conditionalHook(){
        System.out.println("Conditional anotation.");
    }


    @After
    public  void afterScenario(Scenario scenario){
        System.out.println("After Scenario.");

        if(scenario.isFailed()){
            BrowserUtils.takeScreenShot();
        }
    }

    @Given("the user navigates to {string}")
    public void the_user_navigates_to(String url) {
        driver= Driver.getDriver();
        driver.get(url);

    }
    @When("the user search with {string}")
    public void the_user_search_with(String searchValue) {
        homePage = new EtsyHomePage(driver);
        homePage.sendSearchKey(searchValue);
    }
    @When("the user should see the title {string}")
    public void the_user_should_see_the_title(String expectedTitle) {
        String actualTitle = driver.getTitle();
        Assert.assertEquals("validation of Title", expectedTitle, actualTitle);

    }

}
