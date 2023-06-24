*** Settings ***
Resource    ../Resources/PageObjects/LoginPage.robot
Resource    ../Resources/PageObjects/TopBarPage.robot
Suite Teardown    Close All Browsers

*** Test Cases ***
Valid Login Test
    LoginPage.navigateToLoginPage
    LoginPage.loginToApplication    Admin    admin123
    TopBarPage.verifyDashboardIsVisible