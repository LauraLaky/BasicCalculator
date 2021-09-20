@Integers-only-function-tests
Feature: Integers only function tests

  @integers-only
  Scenario Outline: Integers only should working properly when operation is <Operation> (Build: <Build>)
    When I select "<Build>" build
    When operation is "<Operation>"
    And integers only checkbox should be enable
    Examples:
      | Build     | Operation |
      | Prototype | Add       |
      | Prototype | Subtract  |
      | Prototype | Multiply  |
      | Prototype | Divide    |
      | 1         | Add       |
      | 1         | Subtract  |
      | 1         | Multiply  |
      | 1         | Divide    |
      | 2         | Add       |
      | 2         | Subtract  |
      | 3         | Multiply  |
      | 3         | Divide    |
      | 4         | Add       |
      | 4         | Subtract  |
      | 4         | Multiply  |
      | 4         | Divide    |
      | 5         | Add       |
      | 5         | Subtract  |
      | 5         | Multiply  |
      | 5         | Divide    |
      | 6         | Add       |
      | 6         | Subtract  |
      | 6         | Multiply  |
      | 6         | Divide    |
      | 7         | Add       |
      | 7         | Subtract  |
      | 7         | Multiply  |
      | 7         | Divide    |
      | 8         | Add       |
      | 8         | Subtract  |
      | 8         | Multiply  |
      | 8         | Divide    |
      | 9         | Add       |
      | 9         | Subtract  |
      | 9         | Multiply  |
      | 9         | Divide    |


  @integers-only-concatenate
  Scenario Outline: Integers only should working properly when operation is Concatenate (Build: <Build>)
    When I select "<Build>" build
    When operation is "Concatenate"
    And integers only checkbox should be hide
    Examples:
      | Build     |
      | Prototype |
      | 1         |
      | 2         |
      | 3         |
      | 4         |
      | 5         |
      | 6         |
      | 7         |
      | 8         |
      | 9         |