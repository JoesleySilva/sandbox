*** Settings ***
Library    Browser
Library    OperatingSystem
Library    Collections

*** Variables ***
${URL}    https://demoqa.com/automation-practice-form

*** Keywords ***
Abrir Navegador
    New Browser    chromium    headless=True
    New Context

Fechar Navegador
    Close Browser

Medir Tempo de Carregamento
    ${start}=    Evaluate    __import__('time').time()
    Wait For Load State    networkidle
    ${end}=    Evaluate    __import__('time').time()
    ${tempo}=    Evaluate    ${end} - ${start}
    Log    Tempo de carregamento: ${time}
