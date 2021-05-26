*** Settings ***
Library     RequestsLibrary
Library     Collections 
Library     JSONLibrary       

*** Variables ***

${base_url}     https://reqres.in  

*** Test Cases ***
getusername1
    ${proxies}    create dictionary    http=https:genproxy.amdocs.com:8080    https=http:genproxy.amdocs.com:8080
    create session     mysession     ${base_url}    proxies=${proxies}
    
    # ${responce}=     GET On Session     mysession     /api/users?page=2
    ${response}    Get On Session    mysession    url=/api/users?page=2
    
  
    log to console     ${response.content}
    
 

getusername2
    
   create session     mysession     ${base_url}
   ${response}    Get On Session    mysession    url=/api/users?page=2
   ${status_code}=  Convert To String   ${response.status_code}
   log to console     ${status_code}    
   should be equal    ${status_code}     200
   Should Be Equal    ${status_code}   200    
   
getusername3
    create session    mysession    ${base_url}
    ${response}    Get On Session    mysession    url=/api/users/2
    ${status_code}=    Convert To String    ${response.status_code}
    Log To Console    ${status_code}
    Should Be Equal    ${status_code}    200
    

postusername4
    create session    mysession    ${base_url}
    ${response}    Post On Session    mysession    url=/api/users
    ${status_code}=    Convert To String    ${response.status_code}
    Log To Console    ${status_code}
    Should Be Equal    ${status_code}    201


PostUsername5
    
    create session     mysession     ${base_url}
    ${payload}=  create dictionary   name=Zomer   job=leader
    ${response1}    post on session    mysession    url=/api/users     data= ${payload}
    log to console     ${response1.content}


Test_case6
    create session    mysession    ${base_url}
    ${response}    Post On Session    mysession    url=/api/users
    ${status_code}=    Convert To String    ${response.status_code}
    Log To Console    ${status_code}
    Should Be Equal    ${status_code}    201    

    
   
Test_case7
    create session    mysession    ${base_url}
    ${payload}=    Create Dictionary    name=Zomer   job=leader
    ${response1}    post on session    mysession    url=/api/register     data= ${payload}
    log to console     ${response1.content}
    

    