*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOCATE_FOOTER} =    class=ftx-footer
@{FOOTER_LINKS} =    - Our Vision    - News    - Contact    - Terms    - Privacy Policy    - Cookie Policy    - PDPL Document    - Homepage

*** Keywords ***
Scroll to footer
    Scroll Element Into View    ${LOCATE_FOOTER}
    Wait Until Element Is Visible    ${LOCATE_FOOTER}

Click in order footer links
    [Arguments]    ${ORDER_MAX_RANGE}
    FOR    ${fl}  IN   @{FOOTER_LINKS}
    Click Link    ${fl}
    Scroll to footer
    END