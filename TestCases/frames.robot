*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***
Testing frames
    Open Browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html    Firefox
    Maximize Browser Window
    Select Frame    packageListFrame    #id,name,xpath
    Click Link    org.openqa.selenium
    Unselect Frame

    Sleep    3
    Select Frame    packageFrame
    Click Link    WebDriver
    Unselect Frame

    Sleep    3
    Select Frame    classFrame      
    Click Link    Index
    Unselect Frame
    Sleep    3

    Close Browser
