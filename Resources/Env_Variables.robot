*** Settings ***

Library  Selenium2Library
Library  OperatingSystem
Library  String
Resource   CommonKeywords.robot
Resource   AlertKeywords.robot

*** Variables ***
${TIME_OUT}     10s
${PATH_FIREFOX_DRIVER}    ../Driver/geckodriver.exe
${PATH_CHROME_DRIVER}    ../Driver/chromedriver.exe
${PATH_EDGE_DRIVER}    ../Driver/msedgedriver.exe