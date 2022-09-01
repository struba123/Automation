*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***
GetAllLinkTest
    Open Browser    https://demo.guru99.com/selenium/newtours/  Firefox
    Maximize Browser Window
    ${AllLinksCount}=   Get Element Count    //a
    Log To Console    ${AllLinksCount}

    @{Linkitems}   Create List

    FOR     ${i}    IN RANGE    1   ${AllLinksCount}+1
    ${Linktext}=    Get Text    (//a)[${i}]
        Log To Console    ${Linktext}
    END


