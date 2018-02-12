Feature: Removing items from shopping cart


  Background:
    Given: shopping cart page is opened


  Scenario: Remove items with "Remove selected offers" button
    Given: there are 4 items in shopping cart
    When: the user uncheck checkboxes of all items except of one
    And: selects "Remove selected offers" button
    And: confirms "Yes, remove"
    Then: item is removed

  Scenario: Remove items with "x" button
    Given: there are 3 items in shopping cart
    When: the user clicks on "x" button
    Then: item is removed

  Scenario: Remove items with "Remove cart content" button
    Given: there are 2 items in shopping cart
    When: the user selects "Remove card content" button
    And: confirms "Yes, remove"
    Then: all items are removed
    And: message "Your cart is empty" is displayed

  Scenario: Removed items cannot be restored
    Given: items were removed from shopping cart
    When: the user clicks on "Back" button
    Then: page of last added item is displayed
    And: items are not restored to shopping cart