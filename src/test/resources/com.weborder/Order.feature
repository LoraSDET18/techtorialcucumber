@order
Feature: WebOrder Page Food Order

  @tc6 @regression
  Scenario: Validation of Food Order For Office
    Given the user is on weborder home page
    Then the user slect "Office" options
    And  the user is on the group order page
    Then the user send note invitees not "Test"
    And the user send invite list
    | kushal@gmail.com |
    | priyanka@gmail.com |
    | patel@gmail.com     |
    | naveen@gmail.com    |
    | gopa@gmail.com      |
    | sandeep@gmail.com   |
    | aieesh@gmail.com    |
    | samir@gmail.com     |
    And  the user validate "View Group Order" text
    * the user validate total participant is 1
