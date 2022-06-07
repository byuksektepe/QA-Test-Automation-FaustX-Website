*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${ABOUT_US_SECTION} =    xpath=//*[@id="navbarSupportedContent"]/ul/li[2]/a
${ABOUT_US_DROPDOWN_CONTENT} =    css=#navbarSupportedContent > ul > li.nav-item.dropdown.show > div > a:nth-child

*** Keywords ***
Click about us section
    Element Text Should Be    ${ABOUT_US_SECTION}    About Us
    Click Element    ${ABOUT_US_SECTION}
    Wait Until Element Is Visible   ${ABOUT_US_DROPDOWN_CONTENT}\(1)

Click in order about us elements
    FOR  ${i}  IN RANGE  1    3
    Click Element    ${ABOUT_US_DROPDOWN_CONTENT}\(${i})
    click about us section
    END

