*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${DROPDOWN_SECTION} =    xpath=//*[@id="navbarSupportedContent"]/ul/li[2]/a
${DROPDOWN_CONTENT} =    css=#navbarSupportedContent > ul > li.nav-item.dropdown.show > div > a:nth-child

*** Keywords ***
Click about us section
    Element Text Should Be    ${DROPDOWN_SECTION}    About Us
    Click Element    ${DROPDOWN_SECTION}
    Wait Until Element Is Visible   ${DROPDOWN_CONTENT}\(1)

Click in order about us elements
    FOR  ${i}  IN RANGE  1    3
    Click Element    ${DROPDOWN_CONTENT}\(${i})
    click about us section
    END

