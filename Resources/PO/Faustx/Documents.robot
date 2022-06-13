*** Settings ***
Documentation    Document tests are performed one at a time to verify each document separately.
Library    SeleniumLibrary

*** Variables ***
${TERMS_LINK} =    xpath=//a[@href='terms-and-conditions']
${PRIVACY_LINK} =    xpath=//a[@href='privacy-policy']
${COOKIE_LINK} =    xpath=//a[@href='cookie-policy']
${PDPL_LINK} =    xpath=//a[@href='personal-data-protection-law']

*** Keywords ***
Verify "Terms And Conditions"
    Scroll Element Into View    ${TERMS_LINK}
    Click Link  ${TERMS_LINK}
    Page Should Contain     Terms and Conditions (Turkish)
    Go Back

Verify "Privacy Policy"
    Scroll Element Into View    ${PRIVACY_LINK}
    click Link    ${PRIVACY_LINK}
    Page Should Contain     Privacy Policy (Turkish)
    Go Back

Verify "Cookie Policy"
    Scroll Element Into View    ${COOKIE_LINK}
    click Link    ${COOKIE_LINK}
    Page Should Contain     Cookie Policy (Turkish)
    Go Back

Verify "PDPL Document"
    Scroll Element Into View    ${PDPL_LINK}
    click Link    ${PDPL_LINK}
    Page Should Contain     Document of Personal Data Protection Law (Turkish)
    Go Back



