*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com/login?returnurl=%2Fadmin%2F
${BROWSER}      Firefox

*** Keywords ***
Open My Browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
Close Browsers
    Close All Browsers
Open Login Form
    Go To    ${LOGIN URL}
Input Username
    [Arguments]     ${username}
    Input Text    id:Email   ${username}
Input Pwd
    [Arguments]     ${Password}
    Input Text    id:Password    ${Password}
Click Login Button
    Click Element    //button[normalize-space()='Log in']
Click Logout Button
    Click Link    Logout
Error Message should be visible
    Page Should Contain    Login was unsuccessful
Dashboard Page Should Be Visible
    Page Should Contain    Dashboard
