*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Click the element multiple times
    [Documentation]    Called when a button has to be clicked more than once
    [Tags]    FX-S01    Multiple Click
    # Send full locator like "xpath=//div[@id='1']" in this keyword
    # Set Wait 0 for no wait
    [Arguments]    ${CLICK_REPEAT}    ${WHAT?}    ${LOCATOR}    ${WAIT}

    IF   "${WHAT?}" == "BUTTON"
        FOR   ${i}  IN RANGE  ${CLICK_REPEAT}
            Click Button    ${LOCATOR}
            Sleep    ${WAIT}\s
        END
    ELSE IF    "${WHAT?}" == "ELEMENT"
         FOR  ${i}  IN RANGE  ${CLICK_REPEAT}
            Click Element    ${LOCATOR}
            Sleep    ${WAIT}\s
        END
    END