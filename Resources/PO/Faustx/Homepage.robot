*** Settings ***
Documentation    includes "Homepage" Test Keywords
Library    SeleniumLibrary
Resource    ../../GlobalSubKeywords.robot

*** Variables ***
${NEXT_BUTTON} =      css=div[class='swiper-button-next swiper-nav-ctrl next-ctrl cursor-pointer']
${PREV_BUTTON} =      css=div[class='swiper-button-prev swiper-nav-ctrl prev-ctrl cursor-pointer']
${SLIDER_NUMBER} =    xpath=//span[@class='swiper-pagination-current']

${NEXT_BUTTON_WWD} =    xpath=//div[@class='swiper-container swiper-container-initialized swiper-container-horizontal']/div[@class='swiper-button-next swiper-nav-ctrl next-ctrl cursor-pointer']
${PREV_BUTTON_WWD} =    xpath=//div[@class='swiper-container swiper-container-initialized swiper-container-horizontal']/div[@class='swiper-button-prev swiper-nav-ctrl prev-ctrl cursor-pointer']
${SLIDER_VIEW_WWD} =    xpath=//div[@class='swiper-container swiper-container-initialized swiper-container-horizontal']

${CONTACT_FORM_BUTTON}    xpath=//a[.='Contact Form']

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
    Scroll Element Into View   ${SLIDER_VIEW_WWD}
    Click the element multiple times    3    ELEMENT    ${NEXT_BUTTON_WWD}    2

Click "Give Your Feedback" Form
    Scroll Element Into View    ${CONTACT_FORM_BUTTON}
    Wait Until Element Is Visible    ${CONTACT_FORM_BUTTON}
    Click Element    ${CONTACT_FORM_BUTTON}



