*** Settings ***
Library    SeleniumLibrary
Resource    ./PO/Faustx/Navbar.robot

*** Variables ***


*** Keywords ***
Begin "About Us" section
    ${SET_CLICK_VAR} =  Set Variable    click about us section
    Navbar.Click about us section
    Navbar.Click in order dropdown elements     3    ${SET_CLICK_VAR}

Begin "What We Do" section
    ${SET_CLICK_VAR} =  Set Variable    Click what we do section
    Navbar.Click what we do section
    Navbar.Click in order dropdown elements     7    ${SET_CLICK_VAR}

Begin "Our Future" section
    ${SET_CLICK_VAR} =  Set Variable    Click our future section
    Navbar.Click our future section
    Navbar.Click in order dropdown elements     3    ${SET_CLICK_VAR}

