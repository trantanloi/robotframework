*** Settings ***

Resource   ../Resources/Env_Variables.robot
Variables   ../Data/DataAlerts.yaml

*** Test Cases ***

1_Click Button to see alert
    [Setup]    Run Keywords    Open the ${1.URL_PAGE} website with the ${1.BROWSER} browser
    [Teardown]  Close Your Browser
    Select the ${1.CATEGORY} category
    Select the ${1.MENU} menu
    test