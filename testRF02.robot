***Settings***
Library                 SeleniumLibrary
Suite Setup             Open Browser       https://chiangmuan.igovapp.com/login?redirect-to=/health/list      Chrome
#Suite Teardown          Close Browser  
 
***Variables***
${USERNAME}             #email
${PASSWORD}             #password
 
***Keywords***
Click Login Line Element
    Click Element        //*[@id="page-login"]/div/main/div[2]/div/section[1]/div[2]/form/div/div[3]/div/div/a 
            
Input UserName
    Input Text          //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[1]/input       ${USERNAME}
 
Input Password
    Input Text          //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[2]/input       ${PASSWORD}
 
Click Login Button
    Click Button        //*[@id="app"]/div/div/div/div[2]/div/form/fieldset/div[3]/button 

Click to page Element 	      
    Click Element        //*[@id="root"]/div/main/section/div[3]/div[2]/div/div/a[1]

Click Photo Element  	 
    Double Click Element 	//*[@id="root"]/div/main/section[2]/div/div[2]/div[1]/a

Click check Element 
    Double Click Element    xpath=//a[contains(@href, 'diagnosticid=1551300038377-00170"')]           	 
      
 
***Test Cases***
Login with Standard User
    Click Login Line Element

    Input UserName

    Input Password

    Click Login Button

    Wait Until Element Is Visible      //*[@id="root"]/div/main/section/div[3]/div[2]/div/div/a[1]              timeout=10s
    Click to page Element

    Wait Until Element Is Visible      //*[@id="root"]/div/main/section[2]/div/div[2]/div[1]/a               timeout=10s
    Click Photo Element
  
    
    # รอและคลิกที่ลิ้งค์ที่มีคำว่า "diagnostic" ผสมอยู่
    Wait Until Element Is Visible    xpath=//a[contains(@href, 'diagnostic')]    timeout=150s
    Click Element                    xpath=//a[contains(@href, 'diagnostic')] 

    Sleep    120s
    


