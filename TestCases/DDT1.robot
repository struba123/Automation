*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Login_Resources.robot
Suite Setup     Open My Browser
Suite Teardown  Close Browsers
Test Template   Invalid login

*** Test Cases ***          username                 password

Right user empty pass       admin@yourstore.com     ${EMPTY}
Right user wrong pass       admin@yourstore.com     xyz
Wrong user right pass       admin@yourstore.com     admin
Wrong user empty pass       admin@yourstore.com     ${empty}
Wrong user wrong pass       admin@yourstore.com     xyz


*** Keywords ***
Invalid login
    [Arguments]     ${username}     ${password}
    Input Username  ${username}
    Input Pwd      ${password}
    Click Login Button
    Error message should be visible

