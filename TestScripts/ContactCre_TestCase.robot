# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource             ../Resourcefiles/Common.robot
Suite Setup          Setup Browser
Suite Teardown       End suite
Library              QVision

*** Variables ***
${BASE_FILE_PATH}    ${CURDIR}/Data/Testupload.txt                           # Set the base file path to the Data directory


*** Test Cases ***
Entering a Contacts
    [Tags]           Contact
    Appstate         Home
    #Set Config      BASE_FILE_PATH              ${BASE_FILE_PATH}
    LaunchApp        Sales
    ClickText        Contacts
    ClickUntil       New Contact                 New
    UseModal         On
    TypeText         Phone                       +9173966374987
    Picklist         Salutation                  Mr.
    TypeText         First Name                  Test9860
    TypeText         Last Name                   dika
    TypeText         Person Location             this345
    ComboBox         Search Accounts...          GenePoint
    TypeText         Email                       tvsh@gmail.com
    TypeText         Title                       project26
    ClickText        Save                        partial_match=False
    UseModal         Off
    ClickText        Related
    UploadFile       Upload Files                ${CURDIR}/../Data/Testupload.txt
    ClickText        //div[@class\='actionsContainer']//a[@title\='Upload Files']
    Sleep            10s
    UseModal         On
    #VerifyText      Desktop
    #ClickText       Data
    #UploadFile      UploadFile                  Choose File                 ${BASE_FILE_PATH}
    #UploadFile      locator=//input{@name="fileInput"}                      filename=${CURDIR}/../Data/Testupload.txt    visibility=false
    UseModal         On
    ClickText        Done
    UseModal         Off

    # End creation of contacts


