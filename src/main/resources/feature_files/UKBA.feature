Feature: UKBA


  Scenario: Country and study
    Given I am on "https://www.gov.uk/check-uk-visa/y"
    When I provide nationality of "Japan"
    And I click on Continue button
    And I select reason as "Study"
    And I click on Continue button
    And I state that I intend to stay for more than 6 months
    And I click on Continue button
    Then I should be informed that "You’ll need a visa to study in the UK"

  @UKBA
  Scenario Outline: Country and study using scenario outline
    Given I am on "https://www.gov.uk/check-uk-visa/y"
    When I provide nationality of "<CountryName>"
    And I click on Continue button
    And I select reason as "Study"
    And I click on Continue button
    And I state that I intend to stay for more than 6 months
    And I click on Continue button
    Then I should be informed that "<Decision>"
    Examples:
      | CountryName | Decision                              |
      | Japan       | You’ll need a visa to study in the UK |
      | Ukraine     | You’ll need a visa to study in the UK |
      | Morocco     | You’ll need a visa to study in the UK |
