@Multiply-operation-tests
Feature: Multiply operation tests

  @multiply
  Scenario Outline: Should calculate the correct number where <Message> (Build: <Build>)
    Given I am on the Basic calculator page
    When I select "<Build>" build
    And first number is "<Number1>"
    And second number is "<Number2>"
    And operation is "Multiply"
    And integers only is <IntegersOnly>
    Then I click on Calculate button
    And the answer should be equal to "<Answer>"
    Examples:
      | Message                                             | Build     | Number1     | Number2    | IntegersOnly | Answer               |
      | both of the numbers are positive                    | Prototype | 1           | +2         | false        | 2                    |
      | both of the numbers are negative                    | Prototype | -1          | -2         | false        | 2                    |
      | one of the numbers is negative                      | Prototype | -1          | 2          | false        | -2                   |
      | one of the numbers is 0                             | Prototype | 1           | 0          | false        | 0                    |
      | both of the numbers are big numbers                 | Prototype | 9999999999  | 9999999999 | false        | 99999999980000000000 |
      | one of the numbers is bigger than possible          | Prototype | 10000000000 | 9999999999 | false        | 9999999999000000000  |
      | both of the numbers are fractions                   | Prototype | 1.5         | 10.35      | false        | 15.524999999999999   |
      | one of the numbers is fraction                      | Prototype | 34.98765    | 2          | false        | 69.9753              |
      | both of the numbers are positive with integers only | Prototype | 1           | 2          | true         | 2                    |
      | both of the numbers are fraction with integers only | Prototype | 1.5         | 10.35      | true         | 15                   |
      | one of the numbers is fraction with integers only   | Prototype | 34.98765    | 2          | true         | 69                   |
      | one of the numbers is scientific notation           | Prototype | 2.5e+5      | 2          | false        | 500000               |
      | both of the numbers are empty                       | Prototype |             |            | false        | 0                    |
      | one of the numbers is empty                         | Prototype | 2           |            | false        | 0                    |

  @multiply-error
  Scenario Outline: Should display error message (<ErrorMessage>) when <Message> (Build: <Build>)
    Given I am on the Basic calculator page
    When I select "<Build>" build
    And first number is "<Number1>"
    And second number is "<Number2>"
    And operation is "Multiply"
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