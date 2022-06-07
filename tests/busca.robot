*** Settings ***
Library   Browser   #strict=False

*** Test Cases ***
Buscar um restarante por nome
    New Browser    chromium   false
    New Page       https://parodifood.herokuapp.com/
    Take Screenshot
    #Get Title      ==    Fast and reliable end-to-end testing for modern web apps | Playwright
    #Get Element    "Nunca foi tão engraçado pedir comida"
    #Get Text        xpath=//html/body/mt-app/div/div/div/mt-home/section[2]/div/p/span[1]  ==  Nunca foi tão engraçado pedir comida
    #Wait Until Element Is Visible    xpath=//html/body/mt-app/div/div/div/mt-home/section[2]/div/p/span[1]  ==  Nunca foi tão engraçado pedir comida
    
    # Checkpoint
    #Get Text       css=span    *=    Nunca foi tão engraçado pedir comida
    Get Text        xpath=//html/body/mt-app/div/div/div/mt-home/section[2]/div/p/span[1]  ==  Nunca foi tão engraçado pedir comida
    Take Screenshot

    Click          text=Estou com fome!
    Get Text       css=h1 strong     contains    Ta na hora de matar a fome!
    Take Screenshot

    Click          css=.search-link
    Fill Text      css=input[formcontrolname="searchControl"]    Debuger        
    Take Screenshot

    Wait For Elements State    css=.place-info-box    visible    timeout=10s
    Get Text       css=.place-info-box    contains    DEBUGER 
    
    Sleep          2s
    Take Screenshot


    