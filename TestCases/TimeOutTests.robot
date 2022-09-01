*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***

RegTest
    Open Browser    http://demowebshop.tricentis.com/register   Firefox
    Maximize Browser Window
    ${time}=    Get Selenium Timeout
    Log To Console    ${time}


    Set Selenium Timeout    10  seconds
    #Wait Until Page Contains    Register    #5 seconds
    Wait Until Page Contains    Registration #5seconds
    Select Radio Button    Gender    M
    Input Text    name:FirstName    David
    Input Text    name:LastName    John
    Input Text    name:Email    anhc@gmail.com
    Input Text    name:Password    davidjohn
    Input Text    name:ConfirmPassword    davidjohn
