Feature: Failed login in the Saucedemo website
    Feature Description: Failed login because of wrong username and/or password

Scenario: Login with wrong password
    Given that user acesses the login page on Saucedemo
        And inserts a valid username
        And inserts an invalid password
    When user clicks the login button
    Then user must stay in the login page
        And an error message must show up saying "Epic sadface: Username and password do not match any user in this service"
    Examples:
        | standard_user | standart_user |
        | secre_tsauce  | secret_sauce  |
