@signin
Feature: Validating Login page
  @TS_signin_01
  Scenario: Verifying Register link
    Given The user is on signin page
    When The user clicks on register link on signin page
    Then The user redirected to Registration page from signin page

  @TS_signin_02
  Scenario Outline: User on login page and login with invalid inputs "<username>" and "<password>"
    Given The user is on signin page
    When The user enter invalid "<username>" and "<password>"
    Then click login button to verify

    Examples: 
      | username | password |
      | user     |          |
      |          | passowrd |
      |          |          |

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

  @TS_signin_04
  Scenario: Verifying signout link
    Given The user is on signin page with valid username "Ninjacoders" and password "Monrag@204"
    When The user click signout button
    Then The user redirected to homepage
    
   @TS_back
   Scenario: Signing in background
    Given The user is on Signin page of DS Algo portal
    When The user enter valid "Ninjacoders" and "Monrag@204"
    And The user click on login button
    Then The user redirected to homepage    
    
