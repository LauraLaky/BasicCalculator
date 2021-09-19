@Add-operation-tests
Feature: Add operation tests

  @add
  Scenario Outline: Should calculate the correct number <Message> (Build: <Build>)
    Given I am on the Basic calculator page
    When I select "<Build>" build
    And first number is "<Number1>"
    And second number is "<Number2>"
    And operation is "Add"
    And integers only is <IntegersOnly>
    Then I click on Calculate button
    And the answer should be equal to "<Answer>"
    Examples:
      | Message                                           | Build     | Number1     | Number2    | IntegersOnly | Answer      |
      | where both of the numbers are positive            | Prototype | 1           | 2          | false        | 3           |
      | where both of the numbers are negative            | Prototype | -1          | -2         | false        | -3          |
      | where one of the numbers are negative             | Prototype | -1          | 2          | false        | 1           |
      | where one of the numbers are 0                    | Prototype | 1           | 0          | false        | 1           |
      | where both of the numbers are big numbers         | Prototype | 9999999999  | 9999999999 | false        | 19999999998 |
      | where one of the numbers are bigger than possible | Prototype | 10000000000 | 9999999999 | false        | 10999999999 |