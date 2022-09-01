*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***

MultipleBrowseTest

    Open Browser    https://www.google.co.in/   Edge
    Maximize Browser Window

    Sleep    3

    Open Browser    https://www.bing.com/   Edge
    Maximize Browser Window

    Switch Browser    1
    ${Title1}=  Get Title
    Log To Console    ${Title1}

    Switch Browser    2
    ${Title2}=  Get Title
    Log To Console    ${Title2}

    Sleep    3

    Close All Browsers