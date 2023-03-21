*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${input_name}           id:name
${input_phone}          id:phone
${input_email}          id:email
${input_password}       id:password
${textarea_address}     id:address
${button_submit}        name:submit

*** Keywords ***
abrir navegador e acessar o site
    Open Browser    https://itera-qa.azurewebsites.net/home/automation firefox

preencher campos
    Input Text    ${input_name}       Lara
    Input Text    ${input_phone}      11940028922
    Input Text    ${input_email}      lara@teste.com
    Input Text    ${input_password}   12345
    Input Text    ${input_address}    rua omar franqueira

clicar em submit
    Click Element ${button_submit}

fechar navegador
    Close Browser

*** Test Cases ***
Cenário 1: Preencher formulário
    abrir navegador e acessar o site
    preencher campos
    clicar em submit
    fechar navegador