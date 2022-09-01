*** Settings ***

Library     SeleniumLibrary

*** Test Cases ***

MouseActions
#Right click /open context menu
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   Firefox
    Maximize Browser Window
    Open Context Menu    //span[@class='context-menu-one btn btn-neutral']
    Sleep    3

    #Double click action
    Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    //button[normalize-space()='Copy Text']
    Sleep    3

    #Drag and drop
    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop    box7    box107
    Sleep    5
