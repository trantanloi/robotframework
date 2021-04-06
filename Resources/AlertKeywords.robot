*** Settings ***
Resource  ../Locators/AlertLocators.robot

*** Keywords ***

################################################## Action Keywords ######################################################

Click button to see alert

    # Wait
    Wait Until Page Contains Element    ${click_me_1_locator}      ${TIME_OUT}

    #Click button
    Click Element       ${click_me_1_locator}

On button click, alert will appear after 5 seconds

    # Wait
    Wait Until Page Contains Element    ${click_me_2_locator}      ${TIME_OUT}

    #Click button
    Click Element       ${click_me_2_locator}

On button click, confirm box will appear

    # Wait
    Wait Until Page Contains Element    ${click_me_3_locator}      ${TIME_OUT}

    #Click button
    Click Element       ${click_me_3_locator}

On button click, prompt box will appear

    # Wait
    Wait Until Page Contains Element    ${click_me_4_locator}      ${TIME_OUT}

    #Click button
    Click Element       ${click_me_4_locator}

Input your name into the prompt box ${name}, after that click on the ${name_button} button

    Run Keyword If   '${name_button}'=='OK'   Input Text Into Alert  ${name}   action=ACCEPT  timeout=${TIME_OUT}
    ...  ELSE    Handle Alert   DISMISS   timeout=${TIME_OUT}

################################################## Verify Keywords ######################################################

The content alert should be equal ${content}, after that click on the ${name_button} button

    ${text_alert}    Run Keyword If   '${name_button}'=='OK'   Handle Alert  action=ACCEPT  timeout=${TIME_OUT}
    ...  ELSE       Handle Alert   DISMISS   timeout=${TIME_OUT}
    Should be equal    ${text_alert}    ${content}

Verify the ${message} message should appear after clicking on the ${name_button} button

    ${text_message}    Run Keyword If   '${name_button}'=='OK'    Get Text      ${confirm_result_locator}
    ...  ELSE       Get Text      ${confirm_result_locator}
    Should be equal     ${text_message}     ${message}

Verify the ${message} message after clicking on the ${name_button} button

    ${text_message}    Run Keyword If   '${name_button}'=='OK'    Get Text      ${prompt_result_locator}
    Should be equal     ${text_message}     ${message}