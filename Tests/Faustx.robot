*** Settings ***
Documentation    FaustX's Official Website Test Cases, Test numbers are indicated with FX-M0* tags.
Library    Dialogs
Resource    ../Resources/Common.robot
Resource    ../Resources/FaustxWeb.robot

Test Setup    Start FaustX Web Test    ${BROWSER}
Test Teardown    End FaustX Web Test

*** Variables ***
${BROWSER} =    chrome
${SITE_URL} =    https://www.faustx.com/en/

*** Test Cases ***

All users must be enter site
    [Tags]    FX-M01    Smoke    Enter Site
    Common.Open FaustX Website    ${SITE_URL}

User should be able to navigate through all dropdown menus
    [Documentation]         Navbar Menu Tests
    [Tags]    FX-M02    Regression    Navbar Dropdown Menus

    Common.Open FaustX Website    ${SITE_URL}
    FaustxWeb.Begin "About Us" section
    FaustxWeb.Begin "What We Do" section
    FaustxWeb.Begin "Our Future" section
    FaustxWeb.Begin "Contact" section
    FaustxWeb.Begin "Homepage" section

User should be able to navigate through all footer links
    [Documentation]    Footer Tests
    [Tags]    FX-M03    Smoke    Footer Area

    Common.Open FaustX Website    ${SITE_URL}
    FaustxWeb.Begin "Footer" area

Main slider should be move and display correct image
    [Documentation]         Homepage Main Slider Tests
    [Tags]    FX-M04    Smoke    Homepage    Main Slider

    Common.Open FaustX Website    ${SITE_URL}
    FaustxWeb.Main Slider

"What We Do" slider should be move and display correct image
    [Documentation]         Homepage Sub Slider Tests
    [Tags]    FX-M05    Smoke    Homepage    Sub Slider

    Common.Open FaustX Website    ${SITE_URL}
    FaustxWeb.What We Do Slider

Homepage Contact Form must be work
    [Documentation]         Homepage Contact Form Complete Tests
    [Tags]    FX-M06    Smoke    Homepage    Contact Form

    Common.Open FaustX Website    ${SITE_URL}
    FaustxWeb.Begin "Give Your Feedback" Button

User should be see all documents
    [Documentation]         User should be see all document in documents page



