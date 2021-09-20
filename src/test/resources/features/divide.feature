@Divide-operation-tests
Feature: Divide operation tests

  @divide
  Scenario Outline: Should calculate the correct number where <Message> (Build: <Build>)
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
      | both of the numbers are positive                    | 1         | 1           | +2         | false        | 0.5                |
      | both of the numbers are negative                    | 1         | -1          | -2         | false        | 0.5                |
      | one of the numbers is negative                      | 1         | -1          | 2          | false        | -0.5               |
      | first numbers is 0                                  | 1         | 0           | 2          | false        | 0                  |
      | both of the numbers are big numbers                 | 1         | 9999999999  | 9999999998 | false        | 1.0000000001       |
      | one of the numbers is bigger than possible          | 1         | 10000000000 | 9999999999 | false        | 0.10000000001      |
      | both of the numbers are fractions                   | 1         | 10.35       | 1.5        | false        | 6.8999999999999995 |
      | one of the numbers is fraction                      | 1         | 34.98765    | 2          | false        | 69.9753            |
      | both of the numbers are positive with integers only | 1         | 1           | 2          | true         | 0                  |
      | both of the numbers are fraction with integers only | 1         | 10.35       | 1.5        | true         | 69                 |
      | one of the numbers is fraction with integers only   | 1         | 34.98765    | 2          | true         | 17                 |
      | one of the numbers is scientific notation           | 1         | 2.5e+5      | 2          | false        | 125000             |
      | both of the numbers are empty                       | 1         |             |            | false        | 0                  |
      | one of the numbers is empty                         | 1         | 2           |            | false        | 2                  |
      | both of the numbers are positive                    | 2         | 1           | +2         | false        | 0.5                |
      | both of the numbers are negative                    | 2         | -1          | -2         | false        | 0.5                |
      | one of the numbers is negative                      | 2         | -1          | 2          | false        | -0.5               |
      | first numbers is 0                                  | 2         | 0           | 2          | false        | 0                  |
      | both of the numbers are big numbers                 | 2         | 9999999999  | 9999999998 | false        | 1.0000000001       |
      | one of the numbers is bigger than possible          | 2         | 10000000000 | 9999999999 | false        | 0.10000000001      |
      | both of the numbers are fractions                   | 2         | 10.35       | 1.5        | false        | 6.8999999999999995 |
      | one of the numbers is fraction                      | 2         | 34.98765    | 2          | false        | 69.9753            |
      | both of the numbers are positive with integers only | 2         | 1           | 2          | true         | 0                  |
      | both of the numbers are fraction with integers only | 2         | 10.35       | 1.5        | true         | 69                 |
      | one of the numbers is fraction with integers only   | 2         | 34.98765    | 2          | true         | 17                 |
      | one of the numbers is scientific notation           | 2         | 2.5e+5      | 2          | false        | 125000             |
      | both of the numbers are empty                       | 2         |             |            | false        | 0                  |
      | one of the numbers is empty                         | 2         | 2           |            | false        | 2                  |
      | both of the numbers are positive                    | 3         | 1           | +2         | false        | 0.5                |
      | both of the numbers are negative                    | 3         | -1          | -2         | false        | 0.5                |
      | one of the numbers is negative                      | 3         | -1          | 2          | false        | -0.5               |
      | first numbers is 0                                  | 3         | 0           | 2          | false        | 0                  |
      | both of the numbers are big numbers                 | 3         | 9999999999  | 9999999998 | false        | 1.0000000001       |
      | one of the numbers is bigger than possible          | 3         | 10000000000 | 9999999999 | false        | 0.10000000001      |
      | both of the numbers are fractions                   | 3         | 10.35       | 1.5        | false        | 6.8999999999999995 |
      | one of the numbers is fraction                      | 3         | 34.98765    | 2          | false        | 69.9753            |
      | both of the numbers are positive with integers only | 3         | 1           | 2          | true         | 0                  |
      | both of the numbers are fraction with integers only | 3         | 10.35       | 1.5        | true         | 69                 |
      | one of the numbers is fraction with integers only   | 3         | 34.98765    | 2          | true         | 17                 |
      | one of the numbers is scientific notation           | 3         | 2.5e+5      | 2          | false        | 125000             |
      | both of the numbers are empty                       | 3         |             |            | false        | 0                  |
      | one of the numbers is empty                         | 3         | 2           |            | false        | 2                  |
      | both of the numbers are positive                    | 4         | 1           | +2         | false        | 0.5                |
      | both of the numbers are negative                    | 4         | -1          | -2         | false        | 0.5                |
      | one of the numbers is negative                      | 4         | -1          | 2          | false        | -0.5               |
      | first numbers is 0                                  | 4         | 0           | 2          | false        | 0                  |
      | both of the numbers are big numbers                 | 4         | 9999999999  | 9999999998 | false        | 1.0000000001       |
      | one of the numbers is bigger than possible          | 4         | 10000000000 | 9999999999 | false        | 0.10000000001      |
      | both of the numbers are fractions                   | 4         | 10.35       | 1.5        | false        | 6.8999999999999995 |
      | one of the numbers is fraction                      | 4         | 34.98765    | 2          | false        | 69.9753            |
      | both of the numbers are positive with integers only | 4         | 1           | 2          | true         | 0                  |
      | both of the numbers are fraction with integers only | 4         | 10.35       | 1.5        | true         | 69                 |
      | one of the numbers is fraction with integers only   | 4         | 34.98765    | 2          | true         | 17                 |
      | one of the numbers is scientific notation           | 4         | 2.5e+5      | 2          | false        | 125000             |
      | both of the numbers are empty                       | 4         |             |            | false        | 0                  |
      | one of the numbers is empty                         | 4         | 2           |            | false        | 2                  |
      | both of the numbers are positive                    | 5         | 1           | +2         | false        | 0.5                |
      | both of the numbers are negative                    | 5         | -1          | -2         | false        | 0.5                |
      | one of the numbers is negative                      | 5         | -1          | 2          | false        | -0.5               |
      | first numbers is 0                                  | 5         | 0           | 2          | false        | 0                  |
      | both of the numbers are big numbers                 | 5         | 9999999999  | 9999999998 | false        | 1.0000000001       |
      | one of the numbers is bigger than possible          | 5         | 10000000000 | 9999999999 | false        | 0.10000000001      |
      | both of the numbers are fractions                   | 5         | 10.35       | 1.5        | false        | 6.8999999999999995 |
      | one of the numbers is fraction                      | 5         | 34.98765    | 2          | false        | 69.9753            |
      | both of the numbers are positive with integers only | 5         | 1           | 2          | true         | 0                  |
      | both of the numbers are fraction with integers only | 5         | 10.35       | 1.5        | true         | 69                 |
      | one of the numbers is fraction with integers only   | 5         | 34.98765    | 2          | true         | 17                 |
      | one of the numbers is scientific notation           | 5         | 2.5e+5      | 2          | false        | 125000             |
      | both of the numbers are empty                       | 5         |             |            | false        | 0                  |
      | one of the numbers is empty                         | 5         | 2           |            | false        | 2                  |
      | both of the numbers are positive                    | 6         | 1           | +2         | false        | 0.5                |
      | both of the numbers are negative                    | 6         | -1          | -2         | false        | 0.5                |
      | one of the numbers is negative                      | 6         | -1          | 2          | false        | -0.5               |
      | first numbers is 0                                  | 6         | 0           | 2          | false        | 0                  |
      | both of the numbers are big numbers                 | 6         | 9999999999  | 9999999998 | false        | 1.0000000001       |
      | one of the numbers is bigger than possible          | 6         | 10000000000 | 9999999999 | false        | 0.10000000001      |
      | both of the numbers are fractions                   | 6         | 10.35       | 1.5        | false        | 6.8999999999999995 |
      | one of the numbers is fraction                      | 6         | 34.98765    | 2          | false        | 69.9753            |
      | both of the numbers are positive with integers only | 6         | 1           | 2          | true         | 0                  |
      | both of the numbers are fraction with integers only | 6         | 10.35       | 1.5        | true         | 69                 |
      | one of the numbers is fraction with integers only   | 6         | 34.98765    | 2          | true         | 17                 |
      | one of the numbers is scientific notation           | 6         | 2.5e+5      | 2          | false        | 125000             |
      | both of the numbers are empty                       | 6         |             |            | false        | 0                  |
      | one of the numbers is empty                         | 6         | 2           |            | false        | 2                  |
      | both of the numbers are positive                    | 7         | 1           | +2         | false        | 0.5                |
      | both of the numbers are negative                    | 7         | -1          | -2         | false        | 0.5                |
      | one of the numbers is negative                      | 7         | -1          | 2          | false        | -0.5               |
      | first numbers is 0                                  | 7         | 0           | 2          | false        | 0                  |
      | both of the numbers are big numbers                 | 7         | 9999999999  | 9999999998 | false        | 1.0000000001       |
      | one of the numbers is bigger than possible          | 7         | 10000000000 | 9999999999 | false        | 0.10000000001      |
      | both of the numbers are fractions                   | 7         | 10.35       | 1.5        | false        | 6.8999999999999995 |
      | one of the numbers is fraction                      | 7         | 34.98765    | 2          | false        | 69.9753            |
      | both of the numbers are positive with integers only | 7         | 1           | 2          | true         | 0                  |
      | both of the numbers are fraction with integers only | 7         | 10.35       | 1.5        | true         | 69                 |
      | one of the numbers is fraction with integers only   | 7         | 34.98765    | 2          | true         | 17                 |
      | one of the numbers is scientific notation           | 7         | 2.5e+5      | 2          | false        | 125000             |
      | both of the numbers are empty                       | 7         |             |            | false        | 0                  |
      | one of the numbers is empty                         | 7         | 2           |            | false        | 2                  |
      | both of the numbers are positive                    | 8         | 1           | +2         | false        | 0.5                |
      | both of the numbers are negative                    | 8         | -1          | -2         | false        | 0.5                |
      | one of the numbers is negative                      | 8         | -1          | 2          | false        | -0.5               |
      | first numbers is 0                                  | 8         | 0           | 2          | false        | 0                  |
      | both of the numbers are big numbers                 | 8         | 9999999999  | 9999999998 | false        | 1.0000000001       |
      | one of the numbers is bigger than possible          | 8         | 10000000000 | 9999999999 | false        | 0.10000000001      |
      | both of the numbers are fractions                   | 8         | 10.35       | 1.5        | false        | 6.8999999999999995 |
      | one of the numbers is fraction                      | 8         | 34.98765    | 2          | false        | 69.9753            |
      | both of the numbers are positive with integers only | 8         | 1           | 2          | true         | 0                  |
      | both of the numbers are fraction with integers only | 8         | 10.35       | 1.5        | true         | 69                 |
      | one of the numbers is fraction with integers only   | 8         | 34.98765    | 2          | true         | 17                 |
      | one of the numbers is scientific notation           | 8         | 2.5e+5      | 2          | false        | 125000             |
      | both of the numbers are empty                       | 8         |             |            | false        | 0                  |
      | one of the numbers is empty                         | 8         | 2           |            | false        | 2                  |
      | both of the numbers are positive                    | 9         | 1           | +2         | false        | 0.5                |
      | both of the numbers are negative                    | 9         | -1          | -2         | false        | 0.5                |
      | one of the numbers is negative                      | 9         | -1          | 2          | false        | -0.5               |
      | first numbers is 0                                  | 9         | 0           | 2          | false        | 0                  |
      | both of the numbers are big numbers                 | 9         | 9999999999  | 9999999998 | false        | 1.0000000001       |
      | one of the numbers is bigger than possible          | 9         | 10000000000 | 9999999999 | false        | 0.10000000001      |
      | both of the numbers are fractions                   | 9         | 10.35       | 1.5        | false        | 6.8999999999999995 |
      | one of the numbers is fraction                      | 9         | 34.98765    | 2          | false        | 69.9753            |
      | both of the numbers are positive with integers only | 9         | 1           | 2          | true         | 0                  |
      | both of the numbers are fraction with integers only | 9         | 10.35       | 1.5        | true         | 69                 |
      | one of the numbers is fraction with integers only   | 9         | 34.98765    | 2          | true         | 17                 |
      | one of the numbers is scientific notation           | 9         | 2.5e+5      | 2          | false        | 125000             |
      | both of the numbers are empty                       | 9         |             |            | false        | 0                  |
      | one of the numbers is empty                         | 9         | 2           |            | false        | 2                  |

  @divide-error
  Scenario Outline: Should display error message (<ErrorMessage>) when <Message> (Build: <Build>)
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
      | both of the numbers are string                   | 1         | test    | test    | Number 1 is not a number |
      | first number is string                           | 1         | test    | 2       | Number 1 is not a number |
      | second number is string                          | 1         | 2       | test    | Number 2 is not a number |
      | second number is *                               | 1         | 2       | *       | Number 2 is not a number |
      | second number is a wrong scientific notation     | 1         | 2       | 9e      | Number 2 is not a number |
      | second number is fraction with decimal separator | 1         | 1       | 1,5     | Number 2 is not a number |
      | second number is 0                               | 1         | 2       | test    | Divide by zero error!    |
      | both of the numbers are string                   | 2         | test    | test    | Number 1 is not a number |
      | first number is string                           | 2         | test    | 2       | Number 1 is not a number |
      | second number is string                          | 2         | 2       | test    | Number 2 is not a number |
      | second number is *                               | 2         | 2       | *       | Number 2 is not a number |
      | second number is a wrong scientific notation     | 2         | 2       | 9e      | Number 2 is not a number |
      | second number is fraction with decimal separator | 2         | 1       | 1,5     | Number 2 is not a number |
      | second number is 0                               | 2         | 2       | test    | Divide by zero error!    |
      | both of the numbers are string                   | 3         | test    | test    | Number 1 is not a number |
      | first number is string                           | 3         | test    | 2       | Number 1 is not a number |
      | second number is string                          | 3         | 2       | test    | Number 2 is not a number |
      | second number is *                               | 3         | 2       | *       | Number 2 is not a number |
      | second number is a wrong scientific notation     | 3         | 2       | 9e      | Number 2 is not a number |
      | second number is fraction with decimal separator | 3         | 1       | 1,5     | Number 2 is not a number |
      | second number is 0                               | 3         | 2       | test    | Divide by zero error!    |
      | both of the numbers are string                   | 4         | test    | test    | Number 1 is not a number |
      | first number is string                           | 4         | test    | 2       | Number 1 is not a number |
      | second number is string                          | 4         | 2       | test    | Number 2 is not a number |
      | second number is *                               | 4         | 2       | *       | Number 2 is not a number |
      | second number is a wrong scientific notation     | 4         | 2       | 9e      | Number 2 is not a number |
      | second number is fraction with decimal separator | 4         | 1       | 1,5     | Number 2 is not a number |
      | second number is 0                               | 4         | 2       | test    | Divide by zero error!    |
      | both of the numbers are string                   | 5         | test    | test    | Number 1 is not a number |
      | first number is string                           | 5         | test    | 2       | Number 1 is not a number |
      | second number is string                          | 5         | 2       | test    | Number 2 is not a number |
      | second number is *                               | 5         | 2       | *       | Number 2 is not a number |
      | second number is a wrong scientific notation     | 5         | 2       | 9e      | Number 2 is not a number |
      | second number is fraction with decimal separator | 5         | 1       | 1,5     | Number 2 is not a number |
      | second number is 0                               | 5         | 2       | test    | Divide by zero error!    |
      | both of the numbers are string                   | 6         | test    | test    | Number 1 is not a number |
      | first number is string                           | 6         | test    | 2       | Number 1 is not a number |
      | second number is string                          | 6         | 2       | test    | Number 2 is not a number |
      | second number is *                               | 6         | 2       | *       | Number 2 is not a number |
      | second number is a wrong scientific notation     | 6         | 2       | 9e      | Number 2 is not a number |
      | second number is fraction with decimal separator | 6         | 1       | 1,5     | Number 2 is not a number |
      | second number is 0                               | 6         | 2       | test    | Divide by zero error!    |
      | both of the numbers are string                   | 7         | test    | test    | Number 1 is not a number |
      | first number is string                           | 7         | test    | 2       | Number 1 is not a number |
      | second number is string                          | 7         | 2       | test    | Number 2 is not a number |
      | second number is *                               | 7         | 2       | *       | Number 2 is not a number |
      | second number is a wrong scientific notation     | 7         | 2       | 9e      | Number 2 is not a number |
      | second number is fraction with decimal separator | 7         | 1       | 1,5     | Number 2 is not a number |
      | second number is 0                               | 7         | 2       | test    | Divide by zero error!    |
      | both of the numbers are string                   | 8         | test    | test    | Number 1 is not a number |
      | first number is string                           | 8         | test    | 2       | Number 1 is not a number |
      | second number is string                          | 8         | 2       | test    | Number 2 is not a number |
      | second number is *                               | 8         | 2       | *       | Number 2 is not a number |
      | second number is a wrong scientific notation     | 8         | 2       | 9e      | Number 2 is not a number |
      | second number is fraction with decimal separator | 8         | 1       | 1,5     | Number 2 is not a number |
      | second number is 0                               | 8         | 2       | test    | Divide by zero error!    |
      | both of the numbers are string                   | 9         | test    | test    | Number 1 is not a number |
      | first number is string                           | 9         | test    | 2       | Number 1 is not a number |
      | second number is string                          | 9         | 2       | test    | Number 2 is not a number |
      | second number is *                               | 9         | 2       | *       | Number 2 is not a number |
      | second number is a wrong scientific notation     | 9         | 2       | 9e      | Number 2 is not a number |
      | second number is fraction with decimal separator | 9         | 1       | 1,5     | Number 2 is not a number |
      | second number is 0                               | 9         | 2       | test    | Divide by zero error!    |
