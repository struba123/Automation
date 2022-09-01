*** Settings ***

Library     SeleniumLibrary

*** Variables ***

${browser}  Firefox
${url}  http://www.practiseselenium.com/practise-form.html

*** Test Cases ***

Testing Radio Buttons and Checkbox
    Open Browser        ${url}  ${browser}
    Maximize Browser Window

#Selecting radio button
    Select Radio Button      sex    female
    Select Radio Button     exp     5

#Selecting Checkbox
    Select Checkbox     BlackTea
    Select Checkbox    RedTea

    Unselect Checkbox   BlackTea



*** Keywords ***