*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Page Should Contain Element             claim-collection-container
    Element Text Should Be                  css=.a-size-medium-plus.a-spacing-small   Sign in or create account
