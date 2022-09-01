*** Settings ***

Library     SeleniumLibrary
Resource     ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}  Firefox
${SiteUrl}  https://demo.guru99.com/selenium/newtours/index.php
${user}     saurabh123
${pwd}      saurabh12345

*** Test Cases ***
LoginTest
    Open my Browser     ${SiteUrl}      ${Browser}
    Enter Usersname     ${user}
    Enter Password      ${pwd}
    click Signin
    Verify Successful Login
    Close My Browsers

