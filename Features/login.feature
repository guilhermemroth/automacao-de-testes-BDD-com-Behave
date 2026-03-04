Feature: Login in Saucedemo website
    Feature Description: Successful login in "https://www.saucedemo.com/"

Scenario: Login with valid credentials
    Given that user acesses the login page on Saucedemo
        And inserts a valid username
        And inserts a valid password
    When user clicks the login button
    Then user must be redirect to inventary page
        And the url must have /inventory.html
    Examples:
        | standard_user |
        | secret_sauce  |
    