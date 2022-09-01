*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${url}  https://demo.guru99.com/selenium/newtours/
${browser}  Firefox

*** Test Cases ***
TC1
    #launchbrowser   ${url}  ${browser}
    ${PageTitle}=   launchbrowser   ${url}  ${browser}
    Log To Console     ${PageTitle}
    Log     ${PageTitle}
    Input Text    userName    mercury
    Input Text    password    mercury

#*** Keywords ***
#launchbrowser
#Without Arguments
    #Open Browser    ${url}  ${browser}
    #Maximize Browser Window

#With Arguments
    #[Arguments]     ${appurl}   ${appbrowser}
    #Open Browser    ${appurl}   ${appbrowser}
    #Maximize Browser Window

#with Arguments and Return value
    #[Arguments]    ${appurl}   ${appbrowser}
    #Open Browser    ${appurl}   ${appbrowser}
    #Maximize Browser Window
    #${title}=   Get Title
    #[Return]    ${title}