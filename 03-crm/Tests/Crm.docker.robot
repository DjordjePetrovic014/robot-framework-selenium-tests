*** Settings ***
#Run Test Script In Docker
#docker run --rm --shm-size=1g -v "${PWD}:/app" -w /app crm-robot robot -d Results Tests/Crm.docker.robot

Documentation       This is some basic info about the whole suite
Library             SeleniumLibrary

*** Variables ***
${URL}              pwd
${BROWSER}          chrome

*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is some basic info about the TEST
    [Tags]                  1006    Smoke   Contacts

    # Initialize Selenium
    Set selenium speed      .2s
    Set selenium timeout    5s

    # Open the browser (Docker/headless Chrome options)
    log                     Starting the test case!
    ${options}=    Evaluate    selenium.webdriver.ChromeOptions()    selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Open Browser    ${URL}    ${BROWSER}    options=${options}

    page should contain     Customers Are Priority One

    click link              id=SignIn
    page should contain     Login

    input text              id=email-id         admin@robotframeworktutorial.com
    input text              id=password         qwe
    click button            id=submit-id
    page should contain     Our Happy Customers

    click link              id=new-customer
    page should contain     Add Customer

    input text              id=EmailAddress         johndoe@gmail.com
    input text              id=FirstName            Djordje
    input text              id=LastName             Petrovic
    input text              id=City                 Valjevo
    select from list by value    id=StateOrRegion       TX
    select radio button      gender                  female
    select checkbox          name=promos-name
    click button             Submit
    wait until page contains    Success! New customer added.

    sleep                  3s
    close browser

*** Keywords ***