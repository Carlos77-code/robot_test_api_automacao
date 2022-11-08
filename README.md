##  Este Teste visa realizar teste de API e automatizar estes Testes.
##  Link da FakeAPI https://fakerestapi.azurewebsites.net/index.html


## Aqui ficara a estrutura de pastas detalhadamente ##

Pasta raís

    src (pasta pai)
            auto (pasta filha)
                keywords (pasta filha)
                    kws_home.robot (arquivo)
                        Resource                 ../../config/package.robot

            variables (pasta filha)
                    var_home.robot (arquivo)
        
        
        config (pasta filha)
            hooks.robot (arquivo)
                        Resource                package.robot
            
            package.robot (arquivo)
                        ##        Libraries        ##
                        Library                  SeleniumLibrary
                        ##        Keywords        ##
                        Resource                  ../auto/keywords/kws_test_api.robot
                        ##        Pages        ##
                        Resource                  ../auto/variables/var_test_api.robot
                        ##        hooks        ##
                        Resource                  hooks.robot

    test (pasta pai)
        feature
            test.robot (arquivo)
                        Resource                     ../../src/config/package.robot
        
        logs