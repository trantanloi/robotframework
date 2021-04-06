*** Settings ***
Resource  ../Locators/CommonLocators.robot

#*** Variables ***
#
#@{thing.list}=   Create List     , &

*** Keywords ***

Setup Chrome Browser

    Create Webdriver    Chrome    executable_path=${PATH_CHROME_DRIVER}

Setup Firefox Browser

    Create Webdriver    Firefox    executable_path=${PATH_FIREFOX_DRIVER}

Setup Edge Browser

    Create Webdriver    Edge    executable_path=${PATH_EDGE_DRIVER}

Open the ${url_page} website with the ${browser} browser

    Log   ${url_page}
    Log   ${browser}

    Run Keyword If   '${browser}'=='Firefox'   Run Keywords    Setup Firefox Browser
    ...  ELSE IF    '${browser}'=='Chrome'  Run Keywords    Setup Chrome Browser
    ...  ELSE   Setup Edge Browser

    Go to       ${url_page}
    Maximize Browser Window

Close Your Browser
    Close Browser

Scroll down the website
    Execute JavaScript    window.scrollTo(0, 500)

Select the ${category} category

    ${convert_category}=       Remove String    ${category}  ,
    ${convert_category}=       Remove String    ${convert_category}  &
    ${convert_category}=       Evaluate    '${convert_category}'.replace(' ','_')
    ${convert_category}=       Convert To Lower Case    ${convert_category}
    Log   ${convert_category}

    # Verify text
    Wait Until Element Is Visible  ${${convert_category}_locator}       ${TIME_OUT}
    ${text_category}  Get Text  ${${convert_category}_locator}
    Should be equal  ${category}  ${text_category}

    #Scroll down
    scroll down the website

    # Click the category
    Click element  ${${convert_category}_locator}

Select the ${menu} menu

    ${convert_menu}=       Remove String    ${menu}  ,
    ${convert_menu}=       Remove String    ${convert_menu}  &
    ${convert_menu}=       Evaluate    '${convert_menu}'.replace(' ','_')
    ${convert_menu}=       Convert To Lower Case    ${convert_menu}
    Log   ${convert_menu}

    # Verify text
    Wait Until Element Is Visible   ${${convert_menu}_locator}      ${TIME_OUT}
    ${text_menu}  Get Text  ${${convert_menu}_locator}
    Should be equal  ${menu}  ${text_menu}

    # Click the category
    Click element  ${${convert_menu}_locator}

    sleep  3s