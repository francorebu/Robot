*** Settings ***
Resource    ../Resources/PageObjects/LoginPage.robot
Resource    ../Resources/PageObjects/TopBarPage.robot

Suite Teardown    Close All Browsers

*** Test Cases ***
Invalid Login Test
    LoginPage.navigateToLoginPage
    LoginPage.loginToApplication    Admin    invalidPass
    LoginPage.verifyErrorMsgIsVisible