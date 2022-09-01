*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***

HandlingAlerts
    Open Browser    https://the-internet.herokuapp.com/javascript_alerts    Firefox
    Click Element    //*[@id="content"]/div/ul/li[2]/button     #open Alerts
    Sleep    3
    #Handle Alert    accept
    #Handle Alert    dismiss
    #Handle Alert    Leave
    Alert Should Be Present     I am a JS Confirm
    #Alert Should Not Be Present     I am a JS Confirm

