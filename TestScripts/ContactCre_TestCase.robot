# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource                   ../Resourcefiles/Common.robot
Suite Setup                Setup Browser
Suite Teardown             End suite


*** Test Cases ***
Entering a Contacts
    [Tags]                 Contact
    Appstate               Home
    LaunchApp              Sales
    ClickText              Contacts
    ClickUntil             New Contact                 New
    UseModal               On
    TypeText               Phone                       +9173966374987
    Picklist               Salutation                  Mr.
    TypeText               First Name                  VinnuHarshilkalyan
    TypeText               Last Name                   chandika
    ComboBox               Search Accounts...          GenePoint
    TypeText               Email                       tvsh@gmail.com
    TypeText               Title                       project26
    #ClickText              Save                        partial_match=False
    UseModal               Off

    # End creation of contacts
