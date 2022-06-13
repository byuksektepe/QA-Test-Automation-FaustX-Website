*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PRELOADER} =    id=preloader
${FX_LOGO} =    class=logo

*** Keywords ***
Start FaustX Web Test
    [Arguments]     ${BROWSER}
    Open Browser    about:blank    ${BROWSER}    add_experimental_option('excludeSwitches', ['enable-logging'])
    Maximize Browser Window

Open FaustX Website
    [Arguments]    ${SITE_URL}
    Go To          ${SITE_URL}
    Wait Until Element Is Not Visible    ${PRELOADER}
    Wait Until Element Is Visible        ${FX_LOGO}

Go Back
    Execute Javascript  history.back()

End FaustX Web Test
    Close Browser
