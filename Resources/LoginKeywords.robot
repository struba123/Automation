*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]     ${SiteUrl}      ${Browser}
    Open Browser    ${SiteUrl}      ${Browser}
    Maximize Browser Window

Enter Usersname
    [Arguments]     ${username}
    Input Text      txt_loginUserName    ${username}

Enter Password
    [Arguments]     ${password}
    Input Text    txt_loginPassword    ${password}

click Signin
    Click Button    btn_SignIn

Verify Successful Login
    Title Should Be    Find a Flight:Mercury Tours:

Close My Browsers
    Close All Browsers
