*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Scroll to footer
    Scroll Element Into View  css=body > div.main-content > footer
    Sleep    3s