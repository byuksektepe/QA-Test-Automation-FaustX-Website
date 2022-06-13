*** Settings ***
Documentation    Document tests are performed one at a time to verify each document separately.
Library    SeleniumLibrary

*** Variables ***
${TERMS_BUTTON} =    xpath=//a[@href='terms-and-conditions']

*** Keywords ***
Verify "Terms And Conditions" Document



