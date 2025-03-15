# features/login_cucumber.feature
Feature: Ecommerce Login Feature

  Scenario Outline: Verify ecommerce webpage loads and user can sign in
    Given the ecommerce webpage login page loads
    And the ecommerce login link is present
    Then entering correct username "<username>" and password "<password>" should login successfully
    And the "My Account" page should display after login

    Examples:
      | username             | password      |
      | testemail1@gmail.com | LambdaTest123 |

  Scenario Outline: Verify user can log out after successful login
    Given the ecommerce webpage login page loads
    And the ecommerce login link is present
    When entering correct username "<username>" and password "<password>" should login successfully
    And the "My Account" page should display after login
    Then clicking the logout link should log the user out

    Examples:
      | username             | password      |
      | testemail1@gmail.com | LambdaTest123 |

  Scenario Outline: Verify ecommerce webpage loads and user with INVALID username and password should NOT sign in
    Given the ecommerce webpage login page loads
    And the ecommerce login link is present
    Then entering incorrect username "<username>" and password "<password>" fails login
    And an error message should display indicating login failure

    Examples:
      | username              | password      |
      | testemail190@gmail.com | incorrectPass |
      | testemail101@gmail.com | incorrectPass |
