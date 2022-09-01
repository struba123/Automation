*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***
TableValidations
    Open Browser    https://testautomationpractice.blogspot.com/    Firefox
    Maximize Browser Window
    ${rows}     Get Element Count    //table[@name='BookTable']/tbody/tr
    ${columns}  Get Element Count    //table[@name='BookTable']/tbody/tr[1]/th

    Log To Console    ${rows}
    Log To Console    ${columns}

    ${data}     Get Text    //table[@name='BookTable']/tbody/tr[5]/td[1]
    Log To Console    ${data}
    
    Table Column Should Contain    //table[@name='BookTable']    2    Author
    Table Row Should Contain    //table[@name='BookTable']    4    Learn JS
    Table Cell Should Contain    //table[@name='BookTable']    5    2    Mukesh
    Table Header Should Contain    //table[@name='BookTable']    BookName

    Close Browser