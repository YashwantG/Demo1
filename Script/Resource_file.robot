*** settings ***

Resource     Resource_file.robot


*** variable ***
${variable}          Using Resource Variable


*** keyword ***

keyword01
    Log To Console  Executing Keyword
    Log To Console  ${variable}
    
    
keyword02
    Log To Console  Executing Keyword 
    Log To Console  Executing Keyword 
    
kayword03 : FOR LOOP 1
    :FOR     ${variable}    IN RANGE       10
             Log to console   ${variable}
     END
     

    
     

      
   
    

