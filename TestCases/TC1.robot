*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***

LoginTest
    Open Browser    ${url}  ${browser}
    loginToApplication
    Close Browser

*** Keywords ***

loginToApplication
    Click Link    //a[normalize-space()='Log in']
    Input Text    id:Email  pavanoltraining@gmail.com
    Input Text    id:Password    test123
    Click Element    //button[normalize-space()='Log in']

