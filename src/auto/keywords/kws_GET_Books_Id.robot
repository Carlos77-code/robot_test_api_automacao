*** Settings ***
Documentation            Aqui ficam as keywords da automação

Resource                 ../../config/package.robot

*** Keywords ***
##    Segundo Caso de Teste    ##
Requisitar o livro "${ID_LIVRO}"
    ${RESPOSTA}          Get Request    fakeAPI    Books/${ID_LIVRO}
    Log                  ${RESPOSTA.text}
    Set Test Variable    ${RESPOSTA}