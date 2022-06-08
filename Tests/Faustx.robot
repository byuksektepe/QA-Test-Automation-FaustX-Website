*** Settings ***
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
    [Documentation]    Dropdown Menu Tests
    [Tags]    Regression    Navbar Dropdown Menus
    Common.Open FaustX Website    ${SITE_URL}

    FaustxWeb."About us" section
    FaustxWeb."What we do" section
    FaustxWeb."Our future" section
