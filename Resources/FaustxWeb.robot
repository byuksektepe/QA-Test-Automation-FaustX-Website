*** Settings ***
Library    SeleniumLibrary
Resource    ./PO/Faustx/Navbar.robot

*** Variables ***


*** Keywords ***
"About us" section
    ${SET_CLICK_VAR} =  Set Variable    click about us section
    Navbar.Click about us section
    Navbar.Click in order dropdown elements     3    ${SET_CLICK_VAR}

"What we do" section
    ${SET_CLICK_VAR} =  Set Variable    Click what we do section
    Navbar.Click what we do section
    Navbar.Click in order dropdown elements     7    ${SET_CLICK_VAR}

"Our future" section
    ${SET_CLICK_VAR} =  Set Variable    Click our future section
    Navbar.Click our future section
    Navbar.Click in order dropdown elements     3    ${SET_CLICK_VAR}

