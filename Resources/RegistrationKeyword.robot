*** Settings ***

Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]     ${SiteUrl}      ${Browser}
    Open Browser    ${SiteUrl}      ${Browser}
    Maximize Browser Window
Click Register link
    Click Link    ${link_Reg}
Enter firstname
    [Arguments]     ${first_name}
    Input Text    ${txt_firstname}    ${first_name}
Enter lastname
    [Arguments]     ${lastname}
    Input Text    ${txt_lastname}    ${lastname}
Enter phone
    [Arguments]     ${phone}
    Input Text    ${txt_phone}    ${phone}
Enter email
    [Arguments]     ${email}
    Input Text    ${txt_email}    ${email}
Enter address1
    [Arguments]     ${add1}
    Input Text    ${txt_add1}    ${add1}
Enter city
    [Arguments]     ${city}
    Input Text    ${txt_city}    ${city}
Enter state
    [Arguments]     ${state}
    Input Text    ${txt_state}    ${state}
Enter postalcode
    [Arguments]     ${postalcode}
    Input Text    ${txt_postcode}    ${postalcode}
Select country
    [Arguments]     ${country}
    Select From List By Label    ${drp_country}     ${country}
Enter username
    [Arguments]     ${username}
    Input Text    ${txt_userName}    ${username}
Enter password
    [Arguments]     ${password}
    Input Text    ${txt_password}    ${password}
Enter confirmpassword
    [Arguments]     ${confirmpassword}
    Input Text    ${txt_confirmpassword}    ${confirmpassword}
Click submit
    Click Button    ${btn_submit}
Verify successful registration
    Page Should Contain    Thank you for registering
Close My Browsers
    Close All Browsers