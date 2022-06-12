*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CONTACT_PAGE_VERIFY_ELEMENT} =    We focus on visual processing technologies such as target tracking and identification and early warning systems.
${CLICK_IMAGES}

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${CONTACT_PAGE_VERIFY_ELEMENT}