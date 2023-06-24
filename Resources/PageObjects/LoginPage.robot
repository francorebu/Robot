*** Settings ***
Library    SeleniumLibrary

Resource    ../Utilities/constants.robot

*** Variables ***
${browser}           Chrome
${url}               https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

#Page locators

${username}          //*[@name='username']       
${password}          //*[@name='password'] 
${loginButton}       //*[@type='submit'] 
${errorMessage}      //*[text()='Invalid credentials']

*** Keywords ***
navigateToLoginPage
    Open Browser    ${url}    ${browser}

loginToApplication  [Arguments]    ${user}    ${pass}
    navigateToLoginPage
    enterUsername    ${user}
    enterPassword    ${pass}
    clickOnLoginButton    

enterUsername        [Arguments]    ${user}
    Wait Until Element Is Visible    ${username}    timeout=${smallWait}
    Input Text                       ${username}    ${user} 

enterPassword        [Arguments]    ${pass}
    Input Text                      ${password}    ${pass}

clickOnLoginButton
    Click Element                    ${loginButton}

verifyErrorMsgIsVisible
    Wait Until Element Is Visible    ${errorMessage}    timeout=${smallWait}
    Element Should Be Visible        ${errorMessage}    


  

