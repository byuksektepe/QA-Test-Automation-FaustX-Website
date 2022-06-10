*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Click the element multiple times
    [Documentation]    Called when a button has to be clicked more than once
    [Tags]    SUB07    Multiple Click

    [Arguments]    ${CLICK_REPEAT}    ${WHAT?}    ${LOCATOR}
    IF   ${WHAT?} == button

    END