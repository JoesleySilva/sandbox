*** Variables ***
${FIRST_NAME}    css=#firstName
${LOGO}          css=#root header a img

*** Keywords ***
Acessar Página
    New Page    ${URL}

Aguardar Página Carregar
    Wait For Elements State    ${LOGO}    visible

Preencher Nome
    [Arguments]    ${nome}
    Fill Text    ${FIRST_NAME}    ${nome}
