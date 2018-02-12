Feature: Increasing items quantity


  Background:
    Given: shopping cart page is opened
    And: there is at least one item in shopping cart
    And: quantity of one item might be increased


  Scenario: Increasing quantity of item with "+" button
    When: the user clicks "+" button three times
    Then: quantity of item is increased by 3
    And: price for item is three times higher

  Scenario Outline: Increasing quantity of item by entering number
    When: the user enters <quantity> of one of items in proper field
    And: clicks "Enter"
    Then: the highest available number of items is displayed

    Examples:
      |quantity           |
      |the highest        |
      |more than available|