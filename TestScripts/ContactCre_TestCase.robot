# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource                   ../Resourcefiles/Common.robot
Suite Setup                Setup Browser
Suite Teardown             End suite
Library                    QVision

*** Variables ***
${BASE_FILE_PATH}          ${CURDIR}/Data/Testupload.txt                           # Set the base file path to the Data directory


*** Test Cases ***
Entering a Contacts
    [Tags]                 Contact
    Appstate               Home
    #Set Config            BASE_FILE_PATH              ${BASE_FILE_PATH}
    LaunchApp              Sales
    ClickText              Contacts
    ClickUntil             New Contact                 New
    UseModal               On
    TypeText               Phone                       +9173966374987
    Picklist               Salutation                  Mr.
    TypeText               First Name                  TaraDoneUploadFile
    TypeText               Last Name                   ch
    TypeText               Person Location             this345
    ComboBox               Search Accounts...          GenePoint
    TypeText               Email                       tvsh@gmail.com
    TypeText               Title                       project30
    ClickText              Save                        partial_match=False
    UseModal               Off
    ClickText              Related
    #UploadFile            Upload Files                ${CURDIR}/../Data/Testupload.txt    index=2
    #UploadFile            //*[@id\="tab-5"]/slot/flexipage-component2[2]/slot/lst-related-list-container/div/div[4]/lst-related-list-single-container/laf-progressive-container/slot/lst-related-list-single-aura-wrapper/div/div/article/div[2]/div/div/div/div/div/div[2]/lightning-input/lightning-primitive-input-file/div/div    ${CURDIR}/../Data/Testupload.txt    index=2
    ClickText              //div[@class\='actionsContainer']//a[@title\='Upload Files']
    Sleep                  10s
    QVision.DoubleClick    suite
    QVision.DoubleClick    Data
    QVision.DoubleClick    TestupLoad.txt
    #UseModal              On
    #VerifyText            Desktop
    #ClickText             Data
    #UploadFile            UploadFile                  Choose File                 ${BASE_FILE_PATH}
    #UploadFile            locator=//input{@name="fileInput"}                      filename=${CURDIR}/../Data/Testupload.txt    visibility=false
    VerifyText             Upload Files
    VerifyText             1 of 1 file uploaded
    UseModal               On
    ClickText              Done
    UseModal               Off

    # End creation of contacts


