@Subtract-operation-tests
Feature: Subtract operation tests

  @add
  Scenario Outline: Should calculate the correct number <Message> (Build: <Build>)
    Given I am on the Basic calculator page
    When I select "<Build>" build
    And first number is "<Number1>"
    And second number is "<Number2>"
    And operation is "Subtract"
    And integers only is <IntegersOnly>
    Then I click on Calculate button
    And the answer should be equal to "<Answer>"
    Examples:
      | Message                                | Build     | Number1 | Number2 | IntegersOnly | Answer |
      | where both of the numbers are positive | Prototype | 1       | 2       | false        | -1     |
      | where both of the numbers are negative | Prototype | -1      | -2      | false        | 1      |
      | where one of the numbers are negative  | Prototype | -1      | 2       | false        | -3     |
      | where one of the numbers are 0         | Prototype | 1       | 0       | false        | 1      |