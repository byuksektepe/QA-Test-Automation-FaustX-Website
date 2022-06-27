*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${FX_1_TESTS_PAGE_VERIFY_ELEMENT} =    xpath=//span[@class='full-width']
${FX_1_TESTS_DEFAULT} =    xpath=//section[@class='intro-section']//

*** Keywords ***
Verify Page Loaded
    Wait Until Element Is Visible    ${FX_1_TESTS_PAGE_VERIFY_ELEMENT}
    Element Text Should Be    ${FX_1_TESTS_PAGE_VERIFY_ELEMENT}    FX-1ALL

Click all FX1 Test images in loop
    FOR
    END