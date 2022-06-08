*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NEXT_BUTTON} =    class=swiper-button-next
${PREV_BUTTON} =    class=swiper-button-prev
${S_NUM} =    2
${SLIDER_CONTENT} =    xpath=/html/body/header/div[1]/div/div/div[${S_NUM}]/div/div/div/h1

*** Keywords ***
Verify Page Loaded
    wait until element is visible    ${NEXT_BUTTON}

Check slider one content
    Set Global Variable         ${S_NUM}  2
    Element Should Be Visible   ${SLIDER_CONTENT}
    Element Text Should Be      ${SLIDER_CONTENT}    FX-1 Series

Check slider two content
    Set Global Variable         ${S_NUM}  3
    Element Should Be Visible   ${SLIDER_CONTENT}
    Element Text Should Be    ${SLIDER_CONTENT}    FX-FCP

Main slider movement
    Click Element    ${NEXT_BUTTON}
    Sleep    1s
    Run Keyword      Check slider two content

    Click Element    ${NEXT_BUTTON}
    Sleep    1s
    Run Keyword      Check slider one content

    Click Element    ${PREV_BUTTON}
    Sleep    1s

    Click Element    ${PREV_BUTTON}
    Sleep    1s

