***Settings***
Library                 SeleniumLibrary
Suite Setup             Open Browser       https://chiangmuan.igovapp.com/health/diagnostic?id=1551300038377-00170      Chrome
#Suite Teardown          Close Browser  
 
***Variables***

 
***Keywords***
Click Button
    Wait Until Element Is Visible     //*[@id="root"]/div/main/article/section[3]/div/div/div/a    timeout=10s
    Click Element     //*[@id="root"]/div/main/article/section[3]/div/div/div/a       
 
 
***Test Cases***
Login with Standard User
    Click Button


