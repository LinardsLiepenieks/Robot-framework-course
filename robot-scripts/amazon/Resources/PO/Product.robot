*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    Back to results

Add Product To Cart
    Click Button    id=add-to-cart-button
