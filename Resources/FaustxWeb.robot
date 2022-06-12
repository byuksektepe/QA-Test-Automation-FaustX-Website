*** Settings ***
Library    SeleniumLibrary
Resource    ./PO/Faustx/Navbar.robot
Resource    ./PO/Faustx/Footer.robot
Resource    ./PO/Faustx/Homepage.robot
Resource    ./PO/Faustx/Contact.robot

*** Variables ***


*** Keywords ***
# Navbar Tests
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

Begin "Contact" section
    Navbar.Click contact section

Begin "Homepage" section
    Navbar.click homepage section


# Footer Tests
Begin "Footer" area
    Footer.Scroll to footer
    Click in order footer links    8


# Homepage Tests
Main Slider
    Homepage.Verify Page Loaded
    Homepage.Main slider movement

What We Do Slider
    Homepage.Verify Page Loaded
    Homepage.Move "What We Do" Section Slider

Begin "Give Your Feedback" Button
    Homepage.Click "Give Your Feedback" Form
    Contact.Verify Page Loaded



