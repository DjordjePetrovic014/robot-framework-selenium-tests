*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    [Arguments]  ${SearchTerm}
    Wait Until Page Contains  ${SearchTerm}

Verify Product Count
    [Arguments]  ${ExpectedProductCount}
    ${count}=    Get Element Count    xpath=//li[contains(@id, "result_")]
Should Be Equal As Integers    ${count}    ${ExpectedProductCount}

Click Product Link
    [Documentation]               Clicks on the first product in the search results list
    click element                 css=div[data-component-type="s-search-result"]