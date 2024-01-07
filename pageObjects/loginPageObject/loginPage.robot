*** Settings ***
Resource             ../../pageObjects/baseObject/base.robot
Resource             ../homePageObject/homePage.robot
Variables            loginPage_locators.yaml 

*** Variables ***
${VALID_EMAIL}              support@ngendigital.com
${VALID_PASSWORD}           abc123
${INVALID_EMAIL}            INVALID2@MAIL.COM
${INVALID_PASSWORD}         INVALID!@#$%^&*

*** Keywords ***
Verify Login Appears
    Wait Until Element Is Visible        ${email_input_loginPage}
    Wait Until Element Is Visible        ${password_input_loginPage}
    Wait Until Element Is Visible        ${signIn_button_loginPage}

Input User Email on Login Page
    [Arguments]                          ${email}
    Input Text                           ${email_input_loginPage}        ${email}

Input User Password on Login Page
    [Arguments]                          ${password}
    Input Text                           ${password_input_loginPage}     ${password}

Click Sign In Button on Login Page
    Click Element                        ${signIn_button_loginPage}

Login with valid credentials
    [Arguments]                          ${email}=${VALID_EMAIL}         ${password}=${VALID_PASSWORD}
    Verify Home Page Appears
    Click Sign In Button on Home Page
    Verify Login Appears
    Input User Email on Login Page       ${email}
    Input User Password on Login Page    ${password}
    Click Sign In Button on Login Page