@Clear-function-tests
Feature: Clear function tests

  @clear
  Scenario Outline: Clear button should working properly when operation is <Operation> (Build: <Build>)
    Given I select "<Build>" build
    And Clear button should be enable
    And first number is "2"
    And second number is "3"
    And operation is "<Operation>"
    Then I click on Calculate button
    And I click on Clear button
    Then the answer should be equal to ""
    Examples:
      | Build     | Operation   |
      | Prototype | Add         |
      | Prototype | Subtract    |
      | Prototype | Multiply    |
      | Prototype | Divide      |
      | Prototype | Concatenate |
      | 1         | Add         |
      | 1         | Subtract    |
      | 1         | Multiply    |
      | 1         | Divide      |
      | 1         | Concatenate |
      | 2         | Add         |
      | 2         | Subtract    |
      | 2         | Multiply    |
      | 2         | Divide      |
      | 2         | Concatenate |
      | 3         | Add         |
      | 3         | Subtract    |
      | 3         | Multiply    |
      | 3         | Divide      |
      | 3         | Concatenate |
      | 4         | Add         |
      | 4         | Subtract    |
      | 4         | Multiply    |
      | 4         | Divide      |
      | 4         | Concatenate |
      | 5         | Add         |
      | 5         | Subtract    |
      | 5         | Multiply    |
      | 5         | Divide      |
      | 5         | Concatenate |
      | 6         | Add         |
      | 6         | Subtract    |
      | 6         | Multiply    |
      | 6         | Divide      |
      | 6         | Concatenate |
      | 7         | Add         |
      | 7         | Subtract    |
      | 7         | Multiply    |
      | 7         | Divide      |
      | 7         | Concatenate |
      | 8         | Add         |
      | 8         | Subtract    |
      | 8         | Multiply    |
      | 8         | Divide      |
      | 8         | Concatenate |
      | 9         | Add         |
      | 9         | Subtract    |
      | 9         | Multiply    |
      | 9         | Divide      |
      | 9         | Concatenate |

