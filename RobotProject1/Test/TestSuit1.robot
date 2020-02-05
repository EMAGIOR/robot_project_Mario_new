*** Settings ***
Library    SeleniumLibrary   
Suite Setup    Log    Inizio Test Suite
Suite Teardown    Log    Fine Test Suite
Test Setup    Log    Inizio test 
Test Teardown    Log    Fine test  

Default Tags    sanity             
 
*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log    Hello World 1
MySecondTest
    Log    Hello World 2
    Set Tags    regression1
    Remove Tags    regression1
MyThirdTest
    Log    Hello World  3   
MyFourthTest
    Log    Hello World  4  
    
    
# FirstSeleniumTest
    # Open Browser    https://google.com    chrome   
    # Set Browser Implicit Wait    10
    # Input Text    name=q    Automation step to step
    # Click Button    name=btnK
    # Sleep    10    
    # Close Browser
    # Log    Test complited
    
# SempleLoginTest
    # [Documentation]    This is a simple Login Test
    # Open Browser  ${URL}     chrome
    # Set Browser Implicit Wait    10
    # LoginKW
    # Click Element  id=welcome
         
    # Close Browser
    # Log            Test Completed    
     
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/index.php/auth/login
@{CREDENTIALES}  Admin    admin123
&{LOGINDATA}    User=Admin    Password=admin123

*** Keywords ***
LoginKW
    Input Text     id=txtUsername    @{CREDENTIALES}[0]
    Input Text     id=txtPassword    &{LOGINDATA}[Password]
    Click Button   id=btnLogin  
    