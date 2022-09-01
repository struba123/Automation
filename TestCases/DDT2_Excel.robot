*** Settings ***

Library     SeleniumLibrary
Resource    ../Resources/Login_Resources.robot
Library    DataDriver  ../TestData/LoginData.csv     #sheet_name=Sheet1

Suite Setup     Open My Browser
Suite Teardown  Close Browser
Test Template   Invalid login

*** Test Cases ***
LoginTestwithcsv    ${username} and ${Password}

*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${Password}
    Input Username    $username
    Input Pwd    $Password
    Click Login Button
    Error Message should be visible