*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***
LoginTC
    Open Browser    https://www.facebook.com/   Firefox
    Input Text    id:email    saurabh.singh106@gmail.com
    Input Text    id:pass    Bholume17
    Capture Element Screenshot  //*[@id="content"]/div/div/div/div[1]/div[1]/img   C:/Users/Saurabh/PycharmProjects/Automation/Logo.png

    Capture Page Screenshot     C:/Users/Saurabh/PycharmProjects/Automation/LoginTC.png
