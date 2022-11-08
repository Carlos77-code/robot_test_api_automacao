*** Settings ***
Documentation            Aqui ficam as configurações para abrir e fechar o sistema/site

Resource                 package.robot

*** Keywords ***
##    Setup    ##
Conectar a minha API
    Create Session    fakeAPI    ${URL_GET_Books_API}

##    Teardowns    ##