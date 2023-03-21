***Settings***
Library  SeleniumLibrary

**Variables***
#Dados do teste
${NomeDaMusica}  Ariana Grande Positions

#Variáveis de configuração
${URL}  https://www.youtube.com/
${Browser}  chrome

#Elementos
${Input_pesquisa}  //input[@id="search"]
${Button_pesquisa}  //button[@id="search-icon-legacy"]
${Primeiro}  (//*[@id="dismissible"])[1]
${Prova}  //yt-formatted-string[contains(text(),"Compartilhar")]

**Keywords***
Dado que eu acesso o site do youtube
    Open Browser  ${URL}  ${Browser}

Quando digito o nome da música
    Input Text  ${Input_pesquisa}  ${NomeDaMusica}

E clico no botão buscar
    Click Element  ${Button_pesquisa}

E clico na primeira opção da lista
    Click Element  ${Primeiro}

Então o vídeo é executado
    Wait Until Element Is Visible  ${Prova}  5
    Element Should Be Visible  ${Prova}
    Sleep 20s
    Close Browser

***Test Cases***
Cenário 1: Executar vídeo no site do youtube
    Dado que eu acesso o site do youtube
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o vídeo é executado