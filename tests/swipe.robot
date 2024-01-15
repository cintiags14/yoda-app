*** Settings ***

Resource    ../resources/base.resource

*** Test Cases ***

Selecione Mandaloriano

    Start session
    Get started
    Navigate to   Star Wars
    Go to item    Lista   Lista

    ${positions}    Get Element Location    xpath=//android.widget.TextView[@text= "@darthvader"]/ ../ ../ ..//*[contains(@resource-id, "indicator")]
    
    ${start_x}    Set Variable    ${positions}[x]
 
    ${start_y}    Set Variable    ${positions}[y]
 
    ${offset_x}    Evaluate    ${positions}[x] - 650
 
    ${offset_y}    Set Variable    ${positions}[y]


    Swipe    ${start_x}     ${start_y}    ${offset_x}    ${offset_y}
    
    Wait Until Element Is Visible    id=com.qaxperience.yodapp:id/btnRemove
    Click Element                    id=com.qaxperience.yodapp:id/btnRemove

    Wait Until Page Does Not Contain    Darth Vader
    Wait Until Page Contains    Item removido!

