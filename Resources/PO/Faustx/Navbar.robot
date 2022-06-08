*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${DROPDOWN_SECTION} =    xpath=//*[@id="navbarSupportedContent"]/ul/li
${DROPDOWN_CONTENT} =    css=#navbarSupportedContent > ul > li.nav-item.dropdown.show > div > a:nth-child

*** Keywords ***
click homepage section
    Element Text Should Be    ${DROPDOWN_SECTION}\[1]/a    Homepage
    Click Element    ${DROPDOWN_SECTION}\[1]/a

Click about us section
    Element Text Should Be    ${DROPDOWN_SECTION}\[2]/a    About Us
    Click Element    ${DROPDOWN_SECTION}\[2]/a
    Wait Until Element Is Visible   ${DROPDOWN_CONTENT}\(1)

Click in order about us elements
    FOR  ${i}  IN RANGE  1    3
    Click Element    ${DROPDOWN_CONTENT}\(${i})
    click about us section
    END

Click what we do section
    Element Text Should Be    ${DROPDOWN_SECTION}\[3]/a    What We Do
    Click Element    ${DROPDOWN_SECTION}\[3]/a
    Wait Until Element Is Visible   ${DROPDOWN_CONTENT}\(1)

