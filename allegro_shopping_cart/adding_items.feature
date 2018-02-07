Feature: Adding items to shopping cart


  Background:
    Given: https://allegro.pl/ page is opened
    And: the user has an account on Allegro
    And: incognito windows of browser are used to test


  Scenario: Shopping cart icon redirects to cart page
    Given: main page of Allegro is opened
    When: shopping cart icon is selected
    Then: shopping cart page is opened
    And: message "Your cart is empty" is displayed

  Scenario: Adding items as a not logged in user
    Given: shopping cart page displayed
    And: the user is not logged in
    When: the user enters item's name to searching field
    And: first item is selected
    And: "Add to cart" is selected
    And: "Continue shopping" is selected
    Then: item's page is displayed
    And: number of items appeared next to shopping cart icon

  Scenario: Items stay saved in shopping cart after logging
    Given: items are added to shopping cart
    And: "Log in" page is opened
    When: the user enters login
    And: enters correct password
    And: clicks "Login" button
    Then: main page is displayed
    And: number of items added before logging is visible next to shopping cart icon

  Scenario: Adding items as a logged in user
    Given: main page is opened
    And: items are added to shopping cart
    When: the user enters item's name to searching field
    And: item is selected
    And: "Add to cart" is selected
    And: "Go to cart" is selected
    Then: items added before and after logging are displayed in cart page

  Scenario: Items stay saved in shopping cart
    Given: shopping cart page opened
    And: items are added to shopping cart
    When: the user selects "Back" button
    Then: items stay saved
    And: number of previously added items is visible next to shopping cart icon



