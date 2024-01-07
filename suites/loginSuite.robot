*** Settings ***
Resource    ../pageObjects/homePageObject/homePage.robot
Resource    ../pageObjects/loginPageObject/loginPage.robot

# Suite Setup        # sama dengan fungsi before()
# Test Setup         # sama dengan fungsi beforeEach()
# Suite Teardown     # sama dengan fungsi after()
# Test Teardown      # sama dengan fungsi afterEach()

Test Setup        Run Keywords
...               Open Flight Application 

Test Teardown    Close Application




*** Test Cases ***

User should be able to login with valid credentials
    # step 
    # 1. open app - [verify home page appears]
    # Open Flight Application
    # Verify Home Page Appears
    # 2. click Sign In button - [verify sign in page appears]
    Click Sign In Button on Home Page
    Verify Login Appears
    # 3. input valid username and password
    Input User Email on Login Page       ${VALID_EMAIL}
    Input User Password on Login Page    ${VALID_PASSWORD}
    # 4. click Sign In button on login page - [verify user is logged in]
    Click Sign In Button on Login Page
    Verify User is Logged In
    # 5. close app 
    # Close Flight Application

