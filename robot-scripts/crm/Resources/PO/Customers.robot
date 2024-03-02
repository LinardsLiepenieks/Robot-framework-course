*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CUSTOMERS_HEADER_LABEL} =    Our Happy Customers
${CUSTOMERS_ADD_CUSTOMER_LINK} =    id=new-customer
${CUSTOMER_SUCCESS_LABEL} =    Success! New customer added.

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${CUSTOMERS_HEADER_LABEL}

Verify Customer Added Successfully
    Wait Until Page Contains    ${CUSTOMER_SUCCESS_LABEL}

Click Add Customer Link
    Click Link    ${CUSTOMERS_ADD_CUSTOMER_LINK}
