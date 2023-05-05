@part
Feature: Validating Register page
#@TS_register_07
  #Scenario: The user is presented with error message for password with characters less than 8
    #Given The user opens Register Page
    #When The user enters a valid "username" and "password" with characters less than 8
      #| username       | password | password confirmation |
      #| Numpy@sdet84_1 | a1b2c3d  | a1b2c3d               |
    #Then It should display an error message "Password should contain at least 8 characters"
    
     #@TS_register_08
  #Scenario: The user is presented with error message for password with only numbers
    #Given The user opens Register Page
    #When The user enters a valid "username" and "password" with only numbers
      #| username       | password | password confirmation |
      #| Numpy@sdet84_1 | 12345678 |              12345678 |
    #Then It should display an error message "Password can’t be entirely numeric."
    
   @TS_signin_03
  Scenario Outline: User on login page and login with invalid and valid inputs from Excel "<Sheetname>" and <RowNumber>
    Given The user is on signin page
    When The user enter sheet "<Sheetname>" and <RowNumber>
    Then click login button

    Examples: 
      | Sheetname | RowNumber |
      | Sheet1    |         0 |
      | Sheet1    |         1 |
      | Sheet1    |         2 |
      | Sheet1    |         3 |