*** Settings ***
Documentation    Basic info about whole store
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Begin Web Test
    Search For Products
    Select Product from Search Results
    Add Product To Cart
    Begin Checkout
    End Web Test

*** Keywords ***
Begin Web Test
    Open Browser                            about:blank      chrome
    Maximize Browser Window
    Set Selenium Speed                      1s

Search For Products
    Go To                                   http://www.amazon.com/
    Wait Until Page Contains Element        id=twotabsearchtextbox    15s
    Input Text                              id=twotabsearchtextbox      Ferrari 458
    Click element                           id=nav-search-submit-button
    Wait Until Page Contains                results for "Ferrari 458"


Select Product from Search Results
    Click Element                           css=div[data-component-type="s-search-result"]
    Wait Until Page Contains                Buy Now


Add Product To Cart
    Click Button                            id=add-to-cart-button
    Wait Until Page Contains                Added to Cart


Begin Checkout
    Click element                           proceedToRetailCheckout
    Page Should Contain Element             claim-collection-container
    Element Text Should Be                  css=.a-size-medium-plus.a-spacing-small   Sign in or create account


End Web Test
    Close Browser



