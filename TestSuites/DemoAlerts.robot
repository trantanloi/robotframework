*** Settings ***

Resource   ../Resources/Env_Variables.robot
Variables   ../Data/DataAlerts.yaml

*** Test Cases ***

TC01_Click Button to see alert
    [Tags]     TC01
    [Setup]    Run Keywords    Open the ${URL_PAGE} website with the ${TC01.BROWSER} browser
    [Teardown]  Close Your Browser
    Select the ${TC01.CATEGORY} category
    Select the ${TC01.MENU} menu
    Click button to see alert
    The content alert should be equal ${TC01.CONTENT}, after that click on the ${TC01.NAME_BUTTON} button

TC02_On button click, alert will appear after 5 seconds
    [Tags]     TC02
    [Setup]    Run Keywords    Open the ${URL_PAGE} website with the ${TC02.BROWSER} browser
    [Teardown]  Close Your Browser
    Select the ${TC02.CATEGORY} category
    Select the ${TC02.MENU} menu
    On button click, alert will appear after 5 seconds
    The content alert should be equal ${TC02.CONTENT}, after that click on the ${TC02.NAME_BUTTON} button

TC03_On button click, confirm box will appear then click on OK button
    [Tags]     TC03
    [Setup]    Run Keywords    Open the ${URL_PAGE} website with the ${TC03.BROWSER} browser
    [Teardown]  Close Your Browser
    Select the ${TC03.CATEGORY} category
    Select the ${TC03.MENU} menu
    On button click, confirm box will appear
    The content alert should be equal ${TC03.CONTENT}, after that click on the ${TC03.NAME_BUTTON} button
    Verify the ${TC03.MESSAGE} message should appear after clicking on the ${TC03.NAME_BUTTON} button

TC04_On button click, confirm box will appear then click on Cancel button
    [Tags]     TC04
    [Setup]    Run Keywords    Open the ${URL_PAGE} website with the ${TC04.BROWSER} browser
    [Teardown]  Close Your Browser
    Select the ${TC04.CATEGORY} category
    Select the ${TC04.MENU} menu
    On button click, confirm box will appear
    The content alert should be equal ${TC04.CONTENT}, after that click on the ${TC04.NAME_BUTTON} button
    Verify the ${TC04.MESSAGE} message should appear after clicking on the ${TC04.NAME_BUTTON} button

TC05_On button click, prompt box will appear then click on OK button
    [Tags]     TC05
    [Setup]    Run Keywords    Open the ${URL_PAGE} website with the ${TC05.BROWSER} browser
    [Teardown]  Close Your Browser
    Select the ${TC05.CATEGORY} category
    Select the ${TC05.MENU} menu
    On button click, prompt box will appear
    Input your name into the prompt box ${TC05.NAME}, after that click on the ${TC05.NAME_BUTTON} button
    Verify the ${TC05.MESSAGE} message after clicking on the ${TC05.NAME_BUTTON} button

TC06_On button click, prompt box will appear then click on Cancel button
    [Tags]     TC06
    [Setup]    Run Keywords    Open the ${URL_PAGE} website with the ${TC06.BROWSER} browser
    [Teardown]  Close Your Browser
    Select the ${TC06.CATEGORY} category
    Select the ${TC06.MENU} menu
    On button click, prompt box will appear
    Input your name into the prompt box ${TC06.NAME}, after that click on the ${TC06.NAME_BUTTON} button
    Verify the ${TC06.MESSAGE} message after clicking on the ${TC06.NAME_BUTTON} button