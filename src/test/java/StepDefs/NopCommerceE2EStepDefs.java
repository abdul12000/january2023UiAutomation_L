package StepDefs;

import base.BaseUtil;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;

import static org.hamcrest.CoreMatchers.equalTo;
import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.MatcherAssert.assertThat;

public class NopCommerceE2EStepDefs extends BaseUtil{
    private BaseUtil base;
    public NopCommerceE2EStepDefs(BaseUtil base){
        this.base = base;
    }

    @Given("I am not logged in")
    public void i_am_not_logged_in() {
assertThat(base.driver.findElement(By.linkText("Log in")).isDisplayed(),(is(equalTo(true))));
    }
    @When("I click on Computers link")
    public void i_click_on_computers_link() {
        // Write code here that turns the phrase above into concrete actions
      base.driver.findElement((By.linkText("Computers"))).click();
    }
    @When("I click on Desktops link")
    public void i_click_on_desktops_link() {
        // Write code here that turns the phrase above into concrete actions
        base.driver.findElement((By.linkText("Desktops"))).click();
    }
    @When("I click on {string} link")
    public void i_click_on_link(String bYOC) {
        // Write code here that turns the phrase above into concrete actions
        base.driver.findElement((By.linkText(bYOC))).click();

    }
    @When("I select {string} of RAM and {string} of HDD")
    public void i_select_of_ram_and_of_hdd(String string, String string2) {
        // Write code here that turns the phrase above into concrete actions

    }
    @When("I click on Agree to terms check box")
    public void i_click_on_agree_to_terms_check_box() {
        // Write code here that turns the phrase above into concrete actions

    }
    @When("I click on Checkout button")
    public void i_click_on_checkout_button() {
        // Write code here that turns the phrase above into concrete actions

    }
    @Then("{string} page is displayed")
    public void page_is_displayed(String string) {
        // Write code here that turns the phrase above into concrete actions

    }
}
