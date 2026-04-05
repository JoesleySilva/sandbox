*** Settings ***
Library    Browser

*** Test Cases ***
Medir Tempo de Carregamento
    ${start}=    Evaluate    __import__('time').time()

    New Browser    chromium    headless=True
    New Context
    New Page    https://demoqa.com/automation-practice-form

    Wait For Elements State    css=#root header a img    visible

    ${end}=    Evaluate    __import__('time').time()
    ${load_time}=    Evaluate    ${end} - ${start}

    Log    Page load time: ${load_time} seconds

    Close Browser
