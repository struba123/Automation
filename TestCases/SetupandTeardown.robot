*** Settings ***

Suite Setup     Log To Console    Opening Browser
Suite Teardown      Log To Console    Closing Browser

Test Setup      Log To Console    Login To Application
Test Teardown       Log To Console    Logout To Application

*** Test Cases ***
TC1 Prepaid recharge
    Log To Console    This is Prepaid Recharge Testcase 
    
TC2 Postpaid Recharge
    Log To Console    This is Postpaid Recharge Testcase

TC3 Search
    Log To Console    This is Search Testcase

TC4 Advanced search 
    Log To Console    This is Adv search Testcase