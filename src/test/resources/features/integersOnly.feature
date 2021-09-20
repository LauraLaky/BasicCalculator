@Integers-only-function-tests
Feature: Integers only function tests

  @integers-only
  Scenario Outline: Integers only should working properly (Build: <Build>)
    Given I am on the Basic calculator page
    When I select "<Build>" build
    And integers only checkbox should be enable

    Examples:
      | Build     | Operation   |
      | Prototype | Add         |
      | Build     | Subtract    |
      | Build     | Multiply    |
      | Build     | Divide      |
      | Build     | Concatenate |