*** Settings ***
Resource         ../../pageObjects/baseObject/base.robot
Variables        homepage_locators.yaml

*** Keywords ***
Verify Home Page Appears
    Wait Until Element Is Visible    ${logo_homePage}
    Wait Until Element Is Visible    ${signIn_button_homePage}

Click Sign In Button on Home Page
    Click Element                    ${signIn_button_homePage}

Verify User is Logged In
    Wait Until Element Is Visible    ${userName_text_homePage}

Verify Book Button Exists on Home Page
    Wait Until Page Contains Element    ${book_button_homePage}
    
Click Book button on Home Page
    Click Element                    ${book_button_homePage}