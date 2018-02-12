Feature: Decreasing items quantity


  Background:
    Given: shopping cart page is opened
    And: there is at least one item in shopping cart
    And: quantity of one item is increased to maximum


  Scenario: Decreasing quantity of item with "-" button
    When: the user clicks "-" button three times
    Then: quantity of items is decreased by 3
    And: price for item is properly lower

  Scenario Outline: Decreasing quantity of item by entering number
    When: the user enters <quantity> of one of items in proper field
    And: clicks "Enter"
    Then: number of displayed items is 1

    Examples:
      |quantity|
      |1       |
      |0       |
      |-1      |