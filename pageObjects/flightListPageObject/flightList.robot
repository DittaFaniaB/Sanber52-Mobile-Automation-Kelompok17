*** Settings ***
Resource         ../../pageObjects/baseObject/base.robot
Resource        ../homePageObject/homePage.robot
Variables        flightList_locator.yaml 

    
*** Keywords ***
Verify the flight list page appears
    Wait Until Element Is Visible        ${flightListPage}