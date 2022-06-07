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
    Go To    ${SITE_URL}
    Wait Until Element Is Not Visible    id=preloader
    Wait Until Element Is Visible    class=logo


End FaustX Web Test
    Close Browser
