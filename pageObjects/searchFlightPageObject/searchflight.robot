*** Settings ***
Resource         ../../pageObjects/baseObject/base.robot
Resource        ../homePageObject/homePage.robot
Variables        searchflight_locator.yaml 


*** Keywords ***
Verify Search Flight Number Page Appears
    Wait Until Element Is Visible        ${search_button_searchPage}
    Wait Until Element Is Visible        ${enter_flightNumber}
    Wait Until Element Is Visible        ${FlightNumber_input_searchPage}
    Wait Until Element Is Visible        ${logoEnvelope}

Input Valid Flight Number On Search Page
    [Arguments]    ${validFlightNumber}
    Input Text     ${FlightNumber_input_searchPage}    ${validFlightNumber}

Input Invalid Flight Number On Search Page
    [Arguments]    ${invalidFlightNumber}
    Input Text     ${flightNumber_input_searchPage}    ${invalidFlightNumber} 

Click the search button on the search page
    Wait Until Element Is Visible            ${search_button_searchPage}    
    Click Element                            ${search_button_searchPage} 

Verify the flight list page appears
    Wait Until Element Is Visible        ${flightListPage}

Notification of invalid flight number
#    Wait Until Element Is Visible            ${notification_invalid_flightNumber}
#    Wait Until Page Contains            ${notification_invalid_flightNumber}
    Wait Until Page Contains            Please enter valid Flight Number



