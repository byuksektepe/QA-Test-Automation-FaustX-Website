*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${OURVISION_PAGE_VERIFY_ELEMENT} =    xpath=//section[contains(@data-background, 'fx-our-vision.png')]

${OUR_VISION_IMAGES_DEFAULT} =    xpath=//div[@class='row fx-gallery']//
@{CLICK_IMAGES} =    a[@href='../img/fx1s/img-hud.png']    a[@href='../img/fx1s/img-cars.png']    a[@href='../img/fx1s/fx1-heli.png']    a[@href='../img/fx1s/img-traffic.png']

*** Keywords ***
Verify Page Loaded
    Wait Until Element Is Visible    ${OURVISION_PAGE_VERIFY_ELEMENT}

Click Our Vision Images On Loop

    FOR    ${IMAGE}    IN    @{CLICK_IMAGES}
        Scroll Element Into View    ${OUR_VISION_IMAGES_DEFAULT}${IMAGE}
        Click Element    ${OUR_VISION_IMAGES_DEFAULT}${IMAGE}
        Sleep    0.5s
        Click Button    ${FANCY_CLOSE}
    END