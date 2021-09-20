@Concatenate-operation-tests
Feature: Concatenate operation tests

  @concatenate
  Scenario Outline: Should calculate the correct string where <Message> (Build: <Build>)
    Given I am on the Basic calculator page
    When I select "<Build>" build
    And first number is "<Number1>"
    And second number is "<Number2>"
    And operation is "Concatenate"
    Then I click on Calculate button
    And the answer should be equal to "<Answer>"
    Examples:
      | Message                                          | Build     | Number1     | Number2    | Answer               |
      | both of the numbers are positive                 | Prototype | 1           | +2         | 1+2                  |
      | both of the numbers are negative                 | Prototype | -1          | -2         | -1-2                 |
      | one of the numbers is negative                   | Prototype | -1          | 2          | -12                  |
      | first numbers is 0                               | Prototype | 0           | 2          | 02                   |
      | both of the numbers are big numbers              | Prototype | 9999999999  | 9999999999 | 99999999999999999999 |
      | one of the numbers is bigger than possible       | Prototype | 10000000000 | 9999999999 | 10000000009999999999 |
      | both of the numbers are fractions                | Prototype | 10.35       | 1.5        | 10.351.5             |
      | one of the numbers is fraction                   | Prototype | 34.98765    | 2          | 34.987652            |
      | one of the numbers is scientific notation        | Prototype | 2.5e+5      | 2          | 2.5e+52              |
      | both of the numbers are string                   | Prototype | test        | test       | testtest             |
      | first number is string                           | Prototype | test        | 2          | test2                |
      | second number is string                          | Prototype | 2           | test       | 2test                |
      | second number is *                               | Prototype | 2           | *          | 2*                   |
      | second number is a wrong scientific notation     | Prototype | 2           | 9e         | 29e                  |
      | second number is fraction with decimal separator | Prototype | 1           | 1,5        | 11,5                 |
      | both of the numbers are empty                    | Prototype |             |            | 0                    |
      | one of the numbers is empty                      | Prototype | 2           |            | 2                    |
