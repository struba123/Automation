*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***

RegTest
    ${speed}=   Get Selenium Speed
    Log To Console    ${speed}
    Open Browser    http://demowebshop.tricentis.com/register   chrome
    Maximize Browser Window
    Set Selenium Speed    3 seconds
    Select Radio Button    Gender    M
    Input Text    name:FirstName    David
    Input Text    name:LastName    John  
    Input Text    name:Email    anhc@gmail.com
    Input Text    name:Password    davidjohn 
    Input Text    name:ConfirmPassword    davidjohn
    ${speed}=   Get Selenium Speed
    Log To Console    ${speed}
