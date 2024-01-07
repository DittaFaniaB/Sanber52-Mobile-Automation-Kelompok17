*** Settings ***
Resource    ../../pageObjects/homePageObject/homePage.robot
Resource    ../../pageObjects/loginPageObject/loginPage.robot
Resource    ../../pageObjects/bookFlightPageObject/bookFlightRoundTrip/bookflight_roundtrip.robot

Test Setup        Run Keywords
...               Open Flight Application 
...               Login with valid credentials

Test Teardown    Close Application


*** Test Cases ***

User can book flight with option Round Trip
    # Precondition: User is already logged in with valid credentials
    # step : 
    Verify User is Logged In
    # 1. click book button on home page
    Click Book button on Home Page
    # 2. verify book flight page 
    Verify Book Flight Page Appears
    # 3. click round trip tab 
    Click Round Trip Tab on Book Flight Page
    # 4. input from city 
    Fill From City Field on Book Flight Page
    # 5. input to city 
    Fill To City Field on Book Flight Page
    # 6. input class
    Fill Class Field on Book Flight Page
    # 7. input start date
    Fill Start Date Field on Book Flight Page
    # 8. input end date
    Fill End Date Field on Book Flight Page
    # 9. click radio button for option flight or flight + hotel
    Fill Flight Type on Book Flight Page
    # 10. click book button on book flight page
    Click Book button on Book Flight Page
    # 11. verify that user redirect to confirmation page 
    Validate redirect page on book confirmation
    
