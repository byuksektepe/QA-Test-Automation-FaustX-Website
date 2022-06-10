*** Settings ***
Documentation    includes "Homepage" Test Keywords
Library    SeleniumLibrary

*** Variables ***
${NEXT_BUTTON} =      css=div[class='swiper-button-next swiper-nav-ctrl next-ctrl cursor-pointer']
${PREV_BUTTON} =      css=div[class='swiper-button-prev swiper-nav-ctrl prev-ctrl cursor-pointer']
${SLIDER_NUMBER} =    xpath=//span[@class='swiper-pagination-current']

${NEXT_BUTTON_WWD} =    css=.ion-ios-arrow-right
${PREV_BUTTON_WWD} =    css=.ion-ios-arrow-right

*** Keywords ***
Verify Page Loaded
    [Documentation]    Verify "Homepage" is successfully loaded
    wait until element is visible    ${NEXT_BUTTON}

Check slider content
    [Arguments]              ${NUM}
    Element Text Should Be   ${SLIDER_NUMBER}  ${NUM}


Main slider movement
    [Documentation]    Check Main Slider, slides and displays correct content
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

Move "What We Do" Section Slider

    Click Button    css=.ion-ios-arrow-right

