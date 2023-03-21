*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${variavel1}    teste
${variavel2}    hhhh
${variavel3}    1234

*** Keywords ***
abrir site do google
    Open Browser    https://www.google.com.br/ chrome
fechar navegador
    Close Browser
abrir site da globo
    Open Browser    https://www.globo.com/ chrome

*** Test Cases ***
Cenário 1: Teste de abrir site google
    abrir site do google
    fechar navegador

Cenário 1: Teste de abrir navegador
    abrir site da globo
    fechar navegador

    