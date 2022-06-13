*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${MOVE_TO_TOP_BUTTON} =    xpath=//div[@class='progress-wrap cursor-pointer active-progress']

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

Move to top button test
    [Documentation]    Move to top button tests by each pages
    [Tags]    FX-S02   Move To Top
    click element

