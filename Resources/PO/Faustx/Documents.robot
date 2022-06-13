*** Settings ***
Documentation    Document tests are performed one at a time to verify each document separately.
Library    SeleniumLibrary

*** Variables ***
${TERMS_LINK} =    xpath=//a[@href='terms-and-conditions']
${PRIVACY_LINK} =    xpath=//a[@href='privacy-policy']

*** Keywords ***
Verify "Terms And Conditions" Document
    Scroll Element Into View    ${TERMS_LINK}
    Click Link  ${TERMS_LINK}
    Page Should Contain     Terms and Conditions (Turkish)
    Go Back

Verify "Privacy Policy" Document
    Scroll Element Into View    ${PRIVACY_LINK}
    click Link    ${PRIVACY_LINK}
    Page Should Contain     Privacy Policy (Turkish)
    Go Back



