*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Buy Now

Add to Cart
    Click Button  id=add-to-cart-button