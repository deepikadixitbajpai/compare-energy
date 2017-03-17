Feature: As a end user of compare market
  I want to be compare my energy bills
  so that I can get the comparison result


 Scenario: Compare both Electricity and Gas bills and suggest the best deal
    Given I am on Compare Energy link in Compare market website
    When I enter the postcode "PE2 6YS"
    When I fill the details
    Then I should get the comparison detais and best deal