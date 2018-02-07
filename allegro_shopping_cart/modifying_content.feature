Feature: Modifying content of shopping cart


  Background:
    Given: shopping cart page opened
    And: there are at least 3 items in shopping cart
    And: number of one item might be increased


  Scenario: Increasing quantity of item with "+" button
    Given: shopping cart page with items is opened
    When: the user clicks "+" button three times
    Then: quantity of item is increased by 3
    And: price for item is three times higher

  Scenario Outline: Increasing quantity of item by entering number
    Given: shopping cart page with items is opened
    When: the user enters <quantity> of one of items in proper field
    And: clicks "Enter"
    Then: the highest available number of items is displayed

    Examples:
      |quantity           |
      |the highest        |
      |more than available|

  Scenario: Decreasing quantity of item with "-" button
    Given: number of one of items is increased to maximum
    When: the user clicks "-" button five times
    Then: quantity of items is decreased by 5
    And: price for item is properly lower

  Scenario Outline: Decreasing quantity of item by entering number
    Given: number of one of items is increased
    When: the user enters <quantity> of one of items in proper field
    And: clicks "Enter"
    Then: number of items displayed is 1

    Examples:
      |quantity|
      |1       |
      |0       |
      |-1      |

  Scenario: Remove items with "Remove selected offers" button
    Given: shopping cart page with items is opened
    When: the user uncheck checkboxes of all items except of one
    And: selects "Remove selected offers" button
    And: confirms "Yes, remove"
    Then: item is removed

  Scenario: Remove items with "x" button
    Given: shopping cart page with items is opened
    When: the user clicks on "x" button
    Then: item is removed

  Scenario: Remove items with "Remove cart content" button
    Given: shopping cart page with items is opened
    When: the user selects "Remove card content" button
    And: confirms "Yes, remove"
    Then: all items are removed
    And: message "Your cart is empty" is displayed

  Scenario: Removed items cannot be restored
    Given: shopping cart page after removing items is opened
    When: the user clicks on "Back" button
    Then: page of last added item is displayed
    And: items are not restored to shopping cart