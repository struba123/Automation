*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***

NavigationalTest
    Open Browser    https://www.google.co.in/   chrome
    ${loc1}=     Get Location
    Log To Console     ${loc1}

    Go To    https://www.bing.com/
    ${loc2}=     Get Location
    Log To Console     ${loc2}

    Sleep    3

    Go Back
    ${loc1}=    Get Location
    Log To Console     ${loc1}
    Sleep    3

    Close Browser



