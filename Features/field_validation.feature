Feature: Necessary login field left blank in the Saucedemo website
    Failed login because username and/or password field is left blank

    Scenario Outline: Login attempt without password
        Given that user acesses the login page on Saucedemo
        And inserts a valid username "<username>"
        And inserts an invalid password "<password>"
        When user clicks the login button
        Then user must stay in the login page
        And show message "<message>"
        
        Examples:
        | username      | password      | message                                                                   |
        | standard_user |               | Epic sadface: Username and password do not match any user in this service |
        | standart_user |               | Epic sadface: Username and password do not match any user in this service |
        | fghjklbnmmnbn |               | Epic sadface: Username and password do not match any user in this service |

    Scenario Outline: Login attempt without username
        Given that user acesses the login page on Saucedemo
        And inserts an invalid username "<username>"
        And inserts a valid password "<password>"
        When user clicks the login button
        Then user must stay in the login page
        And show message "<message>"

        Examples:
        | username      | password      | message                                                                   |
        |               | secret_sauce  | Epic sadface: Username and password do not match any user in this service |
        |               | jnasjkladmjdn | Epic sadface: Username and password do not match any user in this service |
        |               | standard_user | Epic sadface: Username and password do not match any user in this service |


  Scenario Outline: Login attempt without username and password
        Given that user acesses the login page on Saucedemo
        And inserts an invalid username "<username>"
        And inserts an invalid password "<password>"
        When user clicks the login button
        Then user must stay in the login page
        And show message "<message>"

        Examples:
        | username      | password      | message                                                                   |
        |               |               | Epic sadface: Username and password do not match any user in this service |
        |               |               | Epic sadface: Username and password do not match any user in this service |
        |               |               | Epic sadface: Username and password do not match any user in this service |