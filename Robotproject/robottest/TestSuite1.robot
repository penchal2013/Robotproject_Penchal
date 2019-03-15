
*** Settings ***
Library    SeleniumLibrary

Suite Setup       Log    I am inside the test suite settup
Suite Teardown    Log    I am inside test suite tear down
Test Setup        Log    I am inside test setup
Test Teardown     Log    I am inside test teardown


*** Test Cases ***

MyFirstTestCase
    [Tags]     Smoke
    Log  Helloworld...

MyFirstSeleniumTest
    [Tags]    Smoke
    #Create Webdriver  Chrome  executable_path=D:\Selenium_software\chromedriver_173\chromedriver.exe
    Open Browser    http://www.google.com     Chrome
    Set Browser Implicit Wait    5
    Input Text         name=q                Automation
    Sleep                 5
    Press Key          name=q  ENTER
   # Click button      name=btnK    
    Close Browser
    Log             TestCompleted
    
 
MySampleLoginTest
    [Tags]    Regresssion
    [Documentation]         This is a simple login test into OrangeHRM    
    Open Browser            ${URL}      Chrome
    Set Browser Implicit Wait    5
    Input Text                 id=txtUsername               @{CREDENTIALS}[0]
    Input Text                 id=txtPassword               &{LOGINDATA}[password]
    Click Button               id=btnLogin
    Click Element              id=welcome
    Click Element              link=Logout    
    Sleep                         5
    # Click button      name=btnK    
    Close Browser
    Log             TestCompleted
    Log             This test was executed by %{username} on %{os}

VerifytheTitle
    [Tags]    Regresssion
    Log       Applicatin Verified the title
      
*** Variables ***
#Scalar 
${URL}    https://opensource-demo.orangehrmlive.com/
#LIST
@{CREDENTIALS}      Admin    admin123
#Dictionary
&{LOGINDATA}        username=Admin    password=admin123        
    