*** Settings ***
Library    SeleniumLibrary

Resource    ../Utilities/constants.robot

*** Variables ***
#Page locators
${dropDownUser}       //*[@class='oxd-userdropdown']

*** Keywords ***
verifyDashboardIsVisible
    Wait Until Element Is Visible    ${dropDownUser}    timeout=${smallWait}
    Element Should Be Visible        ${dropDownUser}


