*** Settings ***
Resource         ../../../pageObjects/baseObject/base.robot
Resource    ../../homePageObject/homePage.robot
Variables        bookflight_roundtrip_locator.yaml

*** Variables ***
${ERROR_MESSAGE_FOR_EMPTY_FIELD}            Please fill in all required fields before proceeding.
${ERROR_MESSAGE_FOR_INVALID_DATE_RANGE}     Invalid date range. Please ensure the end date is after the start date.

*** Keywords ***
Verify Book Flight Page Appears
    Wait Until Element Is Visible                        ${roundtrip_tab_bookFlightPage}
    Wait Until Element Is Visible                        ${fromCity_label_bookFlightPage}
    Wait Until Element Is Visible                        ${toCity_label_bookFlightPage}
    Wait Until Element Is Visible                        ${class_label_bookFlightPage}
    Wait Until Page Contains Element                     ${book_button_bookFlightPage}

Click Round Trip Tab on Book Flight Page
    Click Element                                        ${roundtrip_tab_bookFlightPage}

Click From City Dropdown on Book Flight Page 
    Click Element                                        ${fromCity_dropdown_bookFlightPage}

Choose From City Option Chicago on Book Flight Page
    Wait Until Element Is Visible                        ${fromCity_chicago_option_bookFlightPage}
    Click Element                                        ${fromCity_chicago_option_bookFlightPage}

Click To City Dropdown on Book Flight Page
    Click Element                                        ${toCity_dropdown_bookFlightPage}

Choose To City Option Paris on Book Flight Page
    Wait Until Element Is Visible                        ${toCity_paris_option_bookFlightPage}
    Click Element                                        ${toCity_paris_option_bookFlightPage}

Click Class Dropdown on Book Flight Page
    Click Element                                        ${class_dropdown_bookFlightPage}

Choose Class Business on Book Flight Page
    Wait Until Element Is Visible                        ${class_business_option_bookFlightPage}
    Click Element                                        ${class_business_option_bookFlightPage}

Fill From City Field on Book Flight Page
    Click From City Dropdown on Book Flight Page
    Choose From City Option Chicago on Book Flight Page
    
Fill To City Field on Book Flight Page
    Click To City Dropdown on Book Flight Page
    Choose To City Option Paris on Book Flight Page

Fill Class Field on Book Flight Page
    Click Class Dropdown on Book Flight Page
    Choose Class Business on Book Flight Page

Choose date on datepicker on Book Flight Page
    [Arguments]                                          ${date}
    Click Element                                        accessibility_id=${date}


Fill Start Date Field on Book Flight Page
    [Arguments]                                          ${date}
    Click Element                                        ${startDate_input_bookFlightPage}
    Wait Until Element Is Visible                        ${ok_button_datepicker_bookFlightPage}
    Choose date on datepicker on Book Flight Page        ${date}
    Click Element                                        ${ok_button_datepicker_bookFlightPage}

Fill End Date Field on Book Flight Page
    [Arguments]                                          ${date}
    Click Element                                        ${endDate_input_bookFlightPage}
    Wait Until Element Is Visible                        ${ok_button_datepicker_bookFlightPage}
    Choose date on datepicker on Book Flight Page        ${date}
    Click Element                                        ${ok_button_datepicker_bookFlightPage}

Fill Flight Type on Book Flight Page
    Click Element                                        ${flight_radiobutton_bookFlightPage}

Click Book button on Book Flight Page
    Click Element                                        ${book_button_bookFlightPage}

Validate redirect page on book confirmation
    Wait Until Element Is Visible                        ${confirmBooking_text}

Verify error message for empty field on Book Flight Page
    Wait Until Page Contains                             ${ERROR_MESSAGE_FOR_EMPTY_FIELD}

Verify error message for invalid date range on Book Flight Page
    Wait Until Page Contains                             ${ERROR_MESSAGE_FOR_INVALID_DATE_RANGE}