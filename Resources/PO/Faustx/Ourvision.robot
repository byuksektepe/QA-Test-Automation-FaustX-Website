*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CONTACT_PAGE_VERIFY_ELEMENT} =    We focus on visual processing technologies such as target tracking and identification and early warning systems.

${OUR_VISION_IMAGES_DEFAULT} =    xpath=//div[@class='row fx-gallery']//
@{CLICK_IMAGES} =    a[@data-caption='FX-1S Kullanıcı Arayüzü Görünümü']    a[@data-caption='FX-1S Çoklu Araç Takip Testi']    a[@data-caption='FX-1S Çoklu Helikopter Takip Testi']    a[@data-caption='FX-1S Çoklu Araç Takip Testi']

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${CONTACT_PAGE_VERIFY_ELEMENT}

Clcik Our Vision Images On Loop

    FOR    ${IMAGE}    IN    ${CLICK_IMAGES}
        Click Element    ${IMAGE}
        Sleep    0.5s
    END