@wip
Feature: Demoblaze website shopping cart functionality

  User story:  User should be able to add items to cart, delete items from cart and place an order

  Background: Demoblaze website

  Scenario: Add Sony Vaio i5 laptop to the cart
    Given User is on the Demoblaze homepage
    When User navigates to Laptop category
    And User navigates to Sony Vaio i5
    And User clicks add to cart button
    Then User sees Product added confirmation and accepts

  Scenario: Add Dell i7 8gb laptop to the cart
    Given User is on the Demoblaze homepage
    When User navigates to Laptop category
    And User navigates to Dell i7 8gb
    And User clicks on add to cart button
    Then User sees Product added confirmation and accepts it

    Scenario: Delete Dell i7 8gb from the cart
      Given User is on the Demoblaze homepage
      When User navigates to Cart
      And User sees two items in cart
      And User clicks on delete option next to Dell i7 8gb
      Then Dell i7 8GB laptop should be removed from the cart

      Scenario: Place order
        Given User is in cart page
        And User clicks on place order button
        When User fills up all web form fields
        And User clicks on purchase button
        And User sees purchase Id and amount
        And purchase amount equals expected amount
        Then User click ok button





