*** Settings ***
Library    SeleniumLibrary
Resource    ./PO/Faustx/Navbar.robot
Resource    ./PO/Faustx/Footer.robot
Resource    ./PO/Faustx/Homepage.robot
Resource    ./PO/Faustx/Contact.robot
Resource    ./PO/Faustx/Documents.robot
Resource    ./PO/Faustx/Ourvision.robot
Resource    ./PO/Faustx/FX1.Tests.robot

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
    Verify Move To Top Button


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

# Documents Tests
Begin "Documents" index page
    Documents.Verify Page Loaded
    Documents.Verify "Terms And Conditions"
    Documents.Verify "Privacy Policy"
    Documents.Verify "Cookie Policy"
    Documents.Verify "PDPL Document"

Begin "Our Vision" Page
    Navbar.Click about us section
    Navbar.Click "Our Vision" Dropdown
    Ourvision.Verify Page Loaded
    Ourvision.Click Our Vision Images On Loop

Begin "FX-1 Common Release Tests" Page
    Navbar.Click what we do section
    Navbar.Click "FX-1 Common Release Tests" Dropdown






