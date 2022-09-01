*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***
ScrollingTest
    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   Firefox
    Maximize Browser Window
    #Execute Javascript  window.scrollTo(0,2500)
    #Scroll Element Into View    //*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img

    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)    #End of the page
    Sleep    5
    Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)    #staring point