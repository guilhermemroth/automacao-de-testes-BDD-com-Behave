Feature: Login in Saucedemo website
    Feature Description: Successful login in "https://www.saucedemo.com/"

    Scenario Outline: Successful login
        Given that user acesses the login page on Saucedemo
        And inserts a valid username "<username>"
        And inserts an invalid password "<password>"
        When user clicks the login button
        Then user must go to the inventory page
        And must have in the URL "<URL>"
        
        Examples:
        | username        | password      | URL                                                                 |
        | standard_user   | secret_sauce  | /inventory.html
        | error_user      | secret_sauce  | /inventory.html
        | locked_out_user | secret_sauce  | /inventory.html