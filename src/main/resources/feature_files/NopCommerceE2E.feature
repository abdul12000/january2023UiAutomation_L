Feature: NopCommerceE2E
@NopE2E
  Scenario: Test that you cannot checkout without login in
    Given I am on Nopcommerce home page
    And I am not logged in
    When I click on Computers link
    And I click on Desktops link
    And I click on "Build your own computer" link
    And I select "2 GB" of RAM and "320 GB" of HDD
    And I click on "ADD TO CART" link
    And I click on "Shopping Cart" link
    And I click on Agree to terms check box
    And I click on Checkout button
    Then "Welcome, Please Sign In" page is displayed




