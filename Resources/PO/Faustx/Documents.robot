*** Settings ***
Documentation    Document tests are performed one at a time to verify each document separately.
Library    SeleniumLibrary

*** Variables ***
${TERMS_LINK} =    xpath=//a[@href='terms-and-conditions']

*** Keywords ***
Verify "Terms And Conditions" Document
    Scroll Element Into View    ${TERMS_LINK}
    Click Link  ${TERMS_LINK}



