@ebay
Feature: Ebay search functionaly

  @tc4 @smoke @regression
  Scenario: Search for IMac 2020
    Given user is on ebay home page
    When user searches for iMac 2020
    Then user sees results about  iMac only
    And there are more than 3 pages of results
