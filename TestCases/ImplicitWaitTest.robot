*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***

RegTest
    Open Browser    http://demowebshop.tricentis.com/register   Firefox
    Maximize Browser Window

    ${ImplicitTime}=    Get Selenium Implicit Wait
    Log To Console    ${ImplicitTime}

    Set Selenium Implicit Wait    10

     ${ImplicitTime}=    Get Selenium Implicit Wait
    Log To Console    ${ImplicitTime}

    Select Radio Button    Gender    M
    Input Text    name:FirstName1   David
    Input Text    name:LastName    John
    Input Text    name:Email    anhc@gmail.com
    Input Text    name:Password    davidjohn
    Input Text    name:ConfirmPassword    davidjohn