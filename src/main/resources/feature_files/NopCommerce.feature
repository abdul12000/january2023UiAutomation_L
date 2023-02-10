@NopReg
  @Regression
Feature: NopCommerce

  Background:
    Given I am on Nopcommerce home page

  Scenario: 1-Registration using only mandatory input fields
    When I click on Register link
    And I populate only the mandatory fields firstname as "Bob", lastname as "Omotosho", email as "omo1@gmail.com", password and ConfirmPassword as "123456"
    And I click on register button
    Then registration is successful

  Scenario: 2-Registration using all input fields
    When I click on Register link
    And I populate only the mandatory fields firstname as "Bob", lastname as "Omotosho", email as "omo1@gmail.com", password and ConfirmPassword as "123456"
    And I populate day as "3", month as "February", year as "1980" and company as "Malashe"
    And I click on register button
    Then registration is successful