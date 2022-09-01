*** Settings ***

*** Test Cases ***
TC1 User RegistrationTest
    [Tags]      Regression
    Log To Console    This is user Reg Test 
    Log To Console    User Registration Test is Over

TC2 LoginTest
    [Tags]      Sanity
    Log To Console    This is Login Test    
    Log To Console    Login Test is Over

TC3 Change User Setting
    [Tags]      Regression
    Log To Console    This is Changein user Settings
    Log To Console    Change User Settings is Over

TC4 Logout Test
    [Tags]      Sanity
    Log To Console    This is Logout Test
    Log To Console    Logout Test is Over