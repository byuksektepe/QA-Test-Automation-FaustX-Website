*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${ABOUT_US_SECTION} =    xpath=//*[@id="navbarSupportedContent"]/ul/li[2]/a
${ABOUT_US_WAIT_DROPDOWN} =    css=#navbarSupportedContent > ul > li.nav-item.dropdown.show > div > a:nth-child(1)

*** Keywords ***
Click about us section
    Element Text Should Be    ${ABOUT_US_SECTION}    About Us
    Click Element    ${ABOUT_US_SECTION}
    Wait Until Element Is Visible   ${ABOUT_US_WAIT_DROPDOWN}
