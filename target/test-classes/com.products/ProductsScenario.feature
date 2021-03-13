Feature: Validation of Products Page

  @products
  Scenario: Validation of New Product Creation
    Given the user navigates product website home page
    When the user enters product info "MyMoney" and "4"
    And  the user enters the address info "Techtorial", "2200 E Devon", "Des Plains", "IL", "60018"
    * the user enters the card info "Visa", "1345653421", "04/22"
    And  the user validate success message
    Then  the user validate product detail "MyMoney","4", "Techtorial", "2200 E Devon", "Des Plains", "IL", "60018", "Visa", "1345653421", "04/22"

  @product @outline
  Scenario Outline: Validation of New Product Creation
    Given the user navigates product website home page
    When the user enters product info "<productName>" and "<quantity>"
    And the user enters the address info "<name>", "<street>", "<city>", "<state>", "<zipcode>"
    * the user enters the card info "<cardType>", "<cardNumber>", "<expireDate>"
    And the user validate success message
    Then the user validate product detail "<productName>","<quantity>", "<name>", "<street>", "<city>", "<state>", "<zipcode>", "<cardType>", "<cardNumber>", "<expireDate>"
    Examples:
      | productName | quantity | name        | street       | city        | state | zipcode | cardType         | cardNumber       | expireDate |
      | MyMoney     | 4        | Techtorial  | 2200 E Devon | Des Plaines | IL    | 60018   | Visa             | 1343565342       | 04/22      |
      | FamilyAlbum | 2        | Academy     | 2200 E Devon | Austin      | TX    | 90007   | MasterCard       | 4444555566667777 | 08/21      |
      | MyMoney     | 4        | Techtorial  | 2200 E Devon | Des Plaines | IL    | 60018   | Visa             | 1343565342       | 04/22      |
      | FamilyAlbum  | 2        | Academy     | 2200 E Devon | Austin      | TX    | 90007   | MasterCard       | 4444555566667777 | 08/21      |
      | ScreenSaver | 5        | Techtorial1 | 2200 E Devon | Chicago     | IL    | 60066   | American Express | 5555666677778888 | 04/22      |