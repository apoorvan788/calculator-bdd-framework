Feature: Google Calculator Arithmetic Operations
  As a user
  I want to use the Google calculator for arithmetic operations
  So that I can perform basic calculations online

  Background:
    Given I navigate to Google calculator

  Scenario: Division by zero
    When I enter "5"
    And I click the divide button
    And I enter "0"
    And I click the equals button
    Then the result should contain "Infinity" or "Error"

  Scenario: Addition of decimal numbers
    When I enter "3.5"
    And I click the plus button
    And I enter "2.7"
    And I click the equals button
    Then the result should be "6.2"

  Scenario Outline: Basic arithmetic operations
    When I enter "<first_number>"
    And I click the "<operator>" button
    And I enter "<second_number>"
    And I click the equals button
    Then the result should be "<result>"

    Examples:
      | first_number | operator | second_number | result |
      | 10           | plus     | 20            | 30     |
      | 30           | minus    | 15            | 15     |
      | 6            | multiply | 7             | 42     |
      | 50           | divide   | 10            | 5      |
