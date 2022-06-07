*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Start FaustX Web Test
    [Arguments]    ${BROWSER}
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window

Open FaustX Website
    [Arguments]    ${SITE_URL}

End FaustX Web Test
    Close Browser
