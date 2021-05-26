*** settings ***
Resource     Resource_file.robot
Library    SeleniumLibrary    


*** variable ***
${variable1}          Use Suite Variable
${open_browser}     https://www.google.com   Google Chrome

*** keyword ***


*** Test Cases ***

Scenario TC 01 : use suite variable
    Log To Console    ${variable1}
    

    

    

    

    

    
 
   

    

    

    

    