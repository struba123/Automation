*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***

TabbedWindowTest
    Open Browser    https://demo.automationtesting.in/Windows.html  Edge
    Click Element    //*[@id="Tabbed"]/a/button
    Switch Window   title=Sakinalium | Home
    Click Element    //*[@id="main_navbar"]/ul/li[4]/a/span
    Sleep    3
    Close All Browsers