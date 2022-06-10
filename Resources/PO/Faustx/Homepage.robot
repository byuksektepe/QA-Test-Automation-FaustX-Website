*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NEXT_BUTTON} =      css=div[class='swiper-button-next swiper-nav-ctrl next-ctrl cursor-pointer']
${PREV_BUTTON} =      css=div[class='swiper-button-prev swiper-nav-ctrl prev-ctrl cursor-pointer']
${SLIDER_NUMBER} =    xpath=//span[@class='swiper-pagination-current']

*** Keywords ***
Verify Page Loaded
    wait until element is visible    ${NEXT_BUTTON}

Check slider content
    [Arguments]              ${NUM}
    Element Text Should Be   ${SLIDER_NUMBER}  ${NUM}


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

Begin "What We Do" Sliders Section

