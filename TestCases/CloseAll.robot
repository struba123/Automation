*** Settings ***

Library  SeleniumLibrary

*** Test Cases ***
MyTestCase
    Open Browser    http://demowebshop.tricentis.com/register   Firefox
    Maximize Browser Window

    Open Browser    http://automationpractice.com/index.php     Firefox
    Maximize Browser Window

    #Close Browser
    Close All Browsers

