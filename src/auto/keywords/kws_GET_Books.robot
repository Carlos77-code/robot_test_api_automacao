*** Settings ***
Documentation            Aqui ficam as keywords da automação

Resource                 ../../config/package.robot

*** Keywords ***
##    Primeiro Caso de Teste    ##
Requisitar todos os livros
    ${RESPOSTA}    Get Request    fakeAPI    Books
    Log            ${RESPOSTA.text}
    Set Test Variable    ${RESPOSTA}


Conferir o status code
    [Arguments]        ${STATUSCODE_DESEJADO}
    Should Be Equal As Strings    ${RESPOSTA.status_code}    ${STATUSCODE_DESEJADO}


Conferir o reason
    [Arguments]    ${REASON_DESEJADO}
    Should Be Equal As Strings    ${RESPOSTA.reason}    ${REASON_DESEJADO}


Conferir se retorna uma lista com "${QTDE_LIVROS}" livros
    Length Should Be    ${RESPOSTA.json()}    ${QTDE_LIVROS}
    