@Divide-operation-tests
Feature: Divide operation tests

  @divide
  Scenario Outline: Should calculate the correct number where <Message> (Build: <Build>)
    Given I am on the Basic calculator page
    When I select "<Build>" build
    And first number is "<Number1>"
    And second number is "<Number2>"
    And operation is "Divide"
    And integers only is <IntegersOnly>
    Then I click on Calculate button
    And the answer should be equal to "<Answer>"
    Examples:
      | Message                                             | Build     | Number1     | Number2    | IntegersOnly | Answer             |
      | both of the numbers are positive                    | Prototype | 1           | +2         | false        | 0.5                |
      | both of the numbers are negative                    | Prototype | -1          | -2         | false        | 0.5                |
      | one of the numbers is negative                      | Prototype | -1          | 2          | false        | -0.5               |
      | first numbers is 0                                  | Prototype | 0           | 2          | false        | 0                  |
      | both of the numbers are big numbers                 | Prototype | 9999999999  | 9999999998 | false        | 1.0000000001       |
      | one of the numbers is bigger than possible          | Prototype | 10000000000 | 9999999999 | false        | 0.10000000001      |
      | both of the numbers are fractions                   | Prototype | 10.35       | 1.5        | false        | 6.8999999999999995 |
      | one of the numbers is fraction                      | Prototype | 34.98765    | 2          | false        | 69.9753            |
      | both of the numbers are positive with integers only | Prototype | 1           | 2          | true         | 0                  |
      | both of the numbers are fraction with integers only | Prototype | 10.35       | 1.5        | true         | 69                 |
      | one of the numbers is fraction with integers only   | Prototype | 34.98765    | 2          | true         | 17                 |
      | one of the numbers is scientific notation           | Prototype | 2.5e+5      | 2          | false        | 125000             |
      | both of the numbers are empty                       | Prototype |             |            | false        | 0                  |
      | one of the numbers is empty                         | Prototype | 2           |            | false        | 2                  |

  @divide-error
  Scenario Outline: Should display error message (<ErrorMessage>) when <Message> (Build: <Build>)
    Given I am on the Basic calculator page
    When I select "<Build>" build
    And first number is "<Number1>"
    And second number is "<Number2>"
    And operation is "Divide"
    And integers only is false
    Then I click on Calculate button
    And error message should be displayed and matched with "<ErrorMessage>"
    Examples:
      | Message                                          | Build     | Number1 | Number2 | ErrorMessage             |
      | both of the numbers are string                   | Prototype | test    | test    | Number 1 is not a number |
      | first number is string                           | Prototype | test    | 2       | Number 1 is not a number |
      | second number is string                          | Prototype | 2       | test    | Number 2 is not a number |
      | second number is *                               | Prototype | 2       | *       | Number 2 is not a number |
      | second number is a wrong scientific notation     | Prototype | 2       | 9e      | Number 2 is not a number |
      | second number is fraction with decimal separator | Prototype | 1       | 1,5     | Number 2 is not a number |
      | second number is 0                               | Prototype | 2       | test    | Divide by zero error!    |