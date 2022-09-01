*** Settings ***

Library     SeleniumLibrary

*** Variables ***

${browser}  Firefox
${url}  https://demo.automationtesting.in/Register.html

*** Test Cases ***
Handle Dropdown and Lists

    open Browser    ${url}  ${browser}
    Maximize Browser Window

    Select From List By Label    Skills     CSS
    Sleep    3
    Select From List By Index    Skills     6

     #Select From List By Value  Skills     value
    
    # list box
    
    #Select From List By Label    
    #Select From List By Label    
    #Sleep    3

    #Unselect From List By Label    
    Close Browser


