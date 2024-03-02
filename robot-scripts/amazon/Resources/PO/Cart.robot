*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    Added to Cart

Proceed To Checkout
    Click Button    css=input[name="proceedToRetailCheckout"]

