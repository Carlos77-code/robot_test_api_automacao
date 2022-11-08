*** Settings ***
Documentation                Aqui ficam os Casos de Teste da automação
...                          robot -d test/logs test/feature/test.robot
...                          Documentação da API: https://fakerestapi.azurewebsites.net/swagger/ui/index#!/Books

Resource                     ../../src/config/package.robot
Suite Setup                  Conectar a minha API



*** Test Cases ***
Caso de Teste 01: Buscar a listagem de todos os livros (GET em todos os livros)
    [Tags]        Buscar_Todos_Livros
    Requisitar todos os livros
    Conferir o status code    200
    Conferir o reason    OK
    Conferir se retorna uma lista com "200" livros


Caso de Teste 02: Buscar um livro especifico (GET em um livro especifico)
    [Tags]        Buscar_Livro_Especifico
    Requisitar o livro "15"