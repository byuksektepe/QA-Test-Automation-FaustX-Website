*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NEXT_BUTTON} =    class=swiper-button-next
${PREV_BUTTON} =    class=swiper-button-prev
${SLIDER_NUMBER} =    css=body > header > div.swiper-pagination.custom-font.swiper-pagination-fraction > span.swiper-pagination-current

*** Keywords ***
Verify Page Loaded
    wait until element is visible    ${NEXT_BUTTON}

Check slider content
    [Arguments]    ${NUM}
    Element Text Should Be      ${SLIDER_NUMBER}  ${NUM}


Main slider movement
    Click Element    ${NEXT_BUTTON}
    Sleep    1s
    Run Keyword      Check slider content    2

    Click Element    ${NEXT_BUTTON}
    Sleep    1s
    Run Keyword      Check slider content    1

    Click Element    ${PREV_BUTTON}
    Sleep    1s
    Run Keyword      Check slider content    2

    Click Element    ${PREV_BUTTON}
    Sleep    1s
    Run Keyword      Check slider content    1

