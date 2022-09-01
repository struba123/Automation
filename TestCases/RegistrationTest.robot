*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/RegistrationKeyword.robot

*** Variables ***
${browser}  chrome
${siteurl}  https://demo.guru99.com/selenium/newtours/index.php

*** Test Cases ***
RegistrationTest
    open my browser  ${siteurl}  ${browser}
    Click Register link
    Enter firstname     dravid
    Enter lastname      John
    Enter phone         1234567890
    Enter email         davidJohn@gmail.com
    Enter address1      Toronto
    Enter city          Toronto
    Enter state         Brampton
    Enter postalcode    L3S 1E7
    Select country      CANADA
    Enter username      johnxyzad
    Enter password      johnxyz
    Enter confirmpassword       johnxyz
    Click submit
    Verify successful registration
    Close My Browsers

