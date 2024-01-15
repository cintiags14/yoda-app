*** Settings ***

Library    AppiumLibrary

*** Variables ***
${START}    QAX

*** Keywords ***
Start session
    Open Application    http://localhost:4723
    ...                platformName=Android
    ...                deviceName=Android Emulator
    ...                automationName=UIAutomator2
    ...                app=${EXECDIR}//app/yodapp-beta.apk
    ...                udid=emulator-5554
    ...                autoGrantPermissions=true

Get started
    Wait Until Page Contains    ${START}
    Click Text                  ${START}
    
Navigate to
    [Arguments]        ${item_text}
    ${MENU}    Set Variable    //android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Wait Until Element Is Visible    ${MENU}    5
    Click Element                    ${MENU}

    ${CLIQUE_BOTOES}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text}"]

    Wait Until Element Is Visible    ${CLIQUE_BOTOES}   5 
    Click Element                    ${CLIQUE_BOTOES}   

Go to item
    [Arguments]        ${item}    ${checkpoint}
    Wait Until Page Contains    ${item}
    Click Text                  ${item} 
    Wait Until Page Contains    ${checkpoint}  
    

Selecione nivel
    [Arguments]    ${nivel}
    
    Click Element    id=com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Is Visible    class=android.widget.ListView
    Click Element    xpath=//android.widget.TextView[@text="${nivel}"]


Close session
    Close Application