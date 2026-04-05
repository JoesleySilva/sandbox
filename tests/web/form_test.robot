*** Settings ***
Resource    ../../resources/keywords/web_keywords.robot
Resource    ../../resources/pages/form_page.robot

*** Test Cases ***
Teste de Carregamento da Página
    Abrir Navegador

    ${start}=    Evaluate    __import__('time').time()

    Acessar Página
    Aguardar Página Carregar

    ${end}=    Evaluate    __import__('time').time()
    ${tempo}=    Evaluate    ${end} - ${start}

    Log    Tempo total: ${tempo}

    Fechar Navegador
