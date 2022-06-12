*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CONTACT_PAGE_VERIFY_ELEMENT} =    Help us make our products and services better.

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${CONTACT_PAGE_VERIFY_ELEMENT}
