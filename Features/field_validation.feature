Feature: Necessary login field left blank in the Saucedemo website
    Feature Description: Failed login because of username and/or password field left blank

Scenario: Login with blank password
    Given that user acesses the login page on Saucedemo
        And inserts a username
        And doesn't insert a password
    When user clicks the login button
    Then user must stay in the login page
        And an error message must show up saying "Epic sadface: Password is required"
    Examples:
        | standard_user |
        |               |

Scenario: Login with blank username
    Given that user acesses the login page on Saucedemo
        And doesn't insert a username
        And inserts an password
    When user clicks the login button
    Then user must stay in the login page
        And an error message must show up saying "Epic sadface: Username is required"
    Examples:
        |               |
        | secret_sauce  |


Scenario: Login with blank username and password
    Given that user acesses the login page on Saucedemo
        And doesn't insert username
        And doesn't insert password
    When user clicks the login button
    Then user must stay in the login page
        And an error message must show up saying "Epic sadface: Username is required"
    Examples:
        |               |
        |               |
