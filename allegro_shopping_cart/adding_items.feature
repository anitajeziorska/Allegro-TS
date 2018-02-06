Feature: Adding items to shopping cart


  Background:
    Given: user has an account on Allegro
    And: incognito windows of browser are used to test


  Scenario: Shopping cart icon redirects to cart page
    Given: a web browser is on  https://allegro.pl/ page
    When: shopping cart icon is selected
    Then: shopping cart page is opened
    And: message "Your cart is empty" is displayed

  Scenario: Adding items as a not logged in user
    Given: shopping cart page displayed
    And: user is not logged in
    When: user enters item's name to searching field
    And: first item is selected
    And: "Add to cart" is selected
    And: "Continue shopping" is selected
    Then: item's page is displayed
    And: number of items is visible next to shopping cart icon

  Scenario: Items stay saved in shopping cart after logging
    Given: items are added to shopping cart
    And: "Log in" page is opened
    When: user enters login
    And: enters correct password
    And: click "Login" button
    Then: main page is displayed
    And: number of items added before logging is visible next to shopping cart icon

  Scenario: Adding items as a logged in user
    Given: main page is opened
    And: items are added to shopping cart
    When: user enters item's name to searching field
    And: item is selected
    And: "Add to cart" is selected
    And: "Go to cart" is selected
    Then: items added before and after logging are visible in cart page

  Scenario: Items stay saved in shopping cart
    Given: shopping cart page opened
    When: user select "Back" button
    Then: items stay saved
    And: proper number of items is visible next to shopping cart icon



