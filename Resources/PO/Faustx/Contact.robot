*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CONTACT_PAGE_VERIFY_ELEMENT} =    css=section[class='contact section-padding']

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${CONTACT_PAGE_VERIFY_ELEMENT}
