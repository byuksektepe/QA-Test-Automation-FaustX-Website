*** Settings ***
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
    [Tags]    Smoke    Enter Site
    Common.Open FaustX Website    ${SITE_URL}

User should be able to navigate through all dropdown menus
    [Documentation]    Navbar Menu Tests
    [Tags]    Regression    Navbar Dropdown Menus
    Common.Open FaustX Website    ${SITE_URL}

    FaustxWeb.Begin "About Us" section
    FaustxWeb.Begin "What We Do" section
    FaustxWeb.Begin "Our Future" section
    FaustxWeb.Begin "Contact" section
    FaustxWeb.Begin "Homepage" section
    Pause Execution
