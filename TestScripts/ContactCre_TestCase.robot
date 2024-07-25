# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource             ../Resourcefiles/Common.robot
Suite Setup          Setup Browser
Suite Teardown       End suite
Library              QVision
Library              OperatingSystem
Library              SeleniumLibrary

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
    TypeText         First Name                  Plz God
    TypeText         Last Name                   ch
    TypeText         Person Location             this345
    ComboBox         Search Accounts...          GenePoint
    TypeText         Email                       tvsh@gmail.com
    TypeText         Title                       project30
    ClickText        Save                        partial_match=False
    UseModal         Off
    Log              ${CURDIR}
    Log              ${EXECDIR}
    Log              ${CURDIR}/../Data/Testupload.txt
    ClickText        Related
    ${filpath}=      Set Variable                ${EXECDIR}/**/Data/Testupload.txt
    #${CURDIR}/../Data/Testupload.txt
    ${filpath}       Normalize Path              ${filpath}
    UploadFile       //div[@class\='actionsContainer']//a[@title\='Upload Files']    ${filpath}
    #Choose File     //div[@class\='actionsContainer']//a[@title\='Upload Files']    ${filpath}
    #SeleniumLibrary.Choose File                 //div[@class\='actionsContainer']//a[@title\='Upload Files']    ${filpath}
    Sleep            10s
    #UploadFile      //div[@class\='actionsContainer']//a[@title\='Upload Files']    ${filpath}
    #ClickText       //div[@class\='actionsContainer']//a[@title\='Upload Files']
    #UploadFile      //div[@class\='actionsContainer']//a[@title\='Upload Files']    ${filpath}

    #Start below code use for Regression testing, Because testing is using for different path
    #QVision.DoubleClick                         execution
    #QVision.DoubleClick                         ContactCreation_Curiosgoat_Org
    #QVision.DoubleClick                         Data
    #QVision.DoubleClick                         TestupLoad.txt
    #End below code use for Regression testing, Because regression testing is using for different path

    #Start Below code use for live Testing, because live testing is using for different path
    #QVision.DoubleClick                         suite
    #QVision.DoubleClick                         Data
    #QVision.DoubleClick                         TestupLoad.txt
    #End Below code use for live Testing, because live testing is using for different path
    VerifyText       Upload Files
    VerifyText       1 of 1 file uploaded
    UseModal         On
    ClickText        Done
    UseModal         Off
    Sleep            10s

    #Log             ${CURDIR}
    #${uploadpath}                               Set Variable                ${CURDIR}//Data/TestUpload.txt
    #Log             ${uploadpath}
    #UploadFile      Upload Files                ${uploadpath}               index=2    #uncomment and testing
    #Choose File     Upload File                 ${uploadpath}               #uncomment and testing
    #UploadFile      //*[@id\="tab-5"]/slot/flexipage-component2[2]/slot/lst-related-list-container/div/div[4]/lst-related-list-single-container/laf-progressive-container/slot/lst-related-list-single-aura-wrapper/div/div/article/div[2]/div/div/div/div/div/div[2]/lightning-input/lightning-primitive-input-file/div/div    ${CURDIR}/../Data/Testupload.txt    index=2
    #UploadFile      Upload Files                ${uploadpath}               index=2    #uncomment and testing

    #UseModal        On
    #VerifyText      Desktop
    #ClickText       Data
    #UploadFile      UploadFile                  Choose File                 ${BASE_FILE_PATH}
    #UploadFile      locator=//input{@name="fileInput"}                      filename=${CURDIR}/../Data/Testupload.txt    visibility=false

    # End creation of contacts


