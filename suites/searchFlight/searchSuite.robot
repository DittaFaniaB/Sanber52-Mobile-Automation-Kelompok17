*** Settings ***
Resource    ../../pageObjects/homePageObject/homePage.robot
Resource    ../../pageObjects/loginPageObject/loginPage.robot
Resource    ../../pageObjects/searchFlightPageObject/searchflight.robot
Resource    ../../pageObjects/flightListPageObject/flightList.robot

Test Setup        Run Keywords
...               Open Flight Application 
...               Login with valid credentials

Test Teardown     Close Application

*** Variables ***
${VALID_FLIGHTNUMBER}            DA935
${INVALID_FLIGHTNUMBER}            AI001

*** Test Cases ***
TC0001 - User can search using a valid flight number
    # Precondition: User is already logged in with valid credentials
    Verify User is Logged In
    # Step :
    # 1. Click Search button on the home page
    Click Search button on Home Page
    # 2. Ensure the search page appears
    Verify Search Flight Number Page Appears
    # 3. Input flight number
    Input Valid Flight Number On Search Page            ${VALID_FLIGHTNUMBER} 
    # 4. Click the search button on the search page
    Click the search button on the search page
    # 5. Ensure that the flight list page corresponding to the flight number appears.
    Verify the flight list page appears 

TC0002 - User fills the search field with an invalid flight number 
    # Precondition: User is already logged in with valid credentials
    Verify User is Logged In
    # Step :
    # 1. Click Search button on the home page
    Click Search button on Home Page
    # 2. Ensure the search page appears
    Verify Search Flight Number Page Appears
    # 3. Input flight number
    Input Invalid Flight Number On Search Page            ${INVALID_FLIGHTNUMBER} 
    # 4. Click the search button on the search page
    Click the search button on the search page
    # 5. a pop up appears saying "Please enter valid flight number"
    # Notification of invalid flight number

    # saya sudah mencoba semua kemungkinan cara tapi tetap tidak bisa membaca notifikasi 

TC0003 - User click the search button without filling in the search field
    # Precondition: User is already logged in with valid credentials
    Verify User is Logged In
    # Step :
    # 1. Click Search button on the home page
    Click Search button on Home Page
    # 2. Ensure the search page appears
    Verify Search Flight Number Page Appears 
    # 3. Click the search button on the search page
    Click the search button on the search page
    # 4. a pop up appears saying "Please enter valid flight number"
    # Notification of invalid flight number

    # saya sudah mencoba semua kemungkinan cara tapi tetap tidak bisa membaca notifikasi

  