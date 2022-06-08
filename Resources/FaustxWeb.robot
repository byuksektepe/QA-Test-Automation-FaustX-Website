*** Settings ***
Library    SeleniumLibrary
Resource    ./PO/Faustx/Navbar.robot

*** Variables ***


*** Keywords ***
About us section
    Navbar.Click about us section
    Navbar.Click in order about us elements

What we do section
    Navbar.click what we do section
