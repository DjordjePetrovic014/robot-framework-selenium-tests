*** Settings ***
Documentation       This is some basic info about the whole suite
Library             SeleniumLibrary

#Run the script
#robot -d results tests/crm.robot

*** Variables ***



*** Test Cases ***
Should be able to add new customer
    [Documentation]         This is some basic info about the TEST
    [Tags]                  1006    Smoke   Contacts
    #Initialize Selenium
    Set selenium speed      .2s
    Set selenium timeout     5s

    # Open the browser
    log                     Starting the test case!


    open browser            https://automationplayground.com/crm/       chrome

    # Resize browser window for recording
    set window position    x=0    y=0
    set window size        width=1920  height=768

    page should contain    Customers Are Priority One

    click link             id=SignIn
    page should contain    Login

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
    select radio button     gender                  female
    select checkbox         name=promos-name
    click button            Submit
    wait until page contains    Success! New customer added.

    sleep               3s
    close browser


*** Keywords ***