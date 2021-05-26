*** settings ***
Library    SeleniumLibrary    
Documentation    a demo file
...    


*** Variables ***
${var}     https://robotframework.org/    Chrome
*** Keywords ***


*** Test Cases ***
Test Case 1 :
     open browser    https://robotframework.org/    Chrome
     close browser
