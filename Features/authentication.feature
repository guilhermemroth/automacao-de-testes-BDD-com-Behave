Feature: Failed login in the Saucedemo website
    Feature Description: Failed login because of wrong username and/or password

Scenario Outline: Login with wrong username and/or password
    Given that user acesses the login page on Saucedemo
        And inserts a valid username "<username>"
        And inserts an invalid password "<password>"
    When user clicks the login button
    Then user must stay in the login page
        And an show message  "<message>"
    Examples:
        | username      | password      | message
        | standard_user | secre_tsauce  | Epic sadface: Username and password do not match any user in this service
        | standart_user | secret_sauce  | Epic sadface: Username and password do not match any user in this service
        | standart_user | secre_tsauce  | Epic sadface: Username and password do not match any user in this service
