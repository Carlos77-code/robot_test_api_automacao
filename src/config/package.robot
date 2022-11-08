*** Settings ***
Documentation            Aqui fica o Gerenciador de dependencia da automação


##        Libraries        ##
Library                  SeleniumLibrary



##        Keywords        ##
Resource                  ../auto/keywords/kws_test_api.robot


##        Pages        ##
Resource                  ../auto/variables/var_test_api.robot


##        hooks        ##
Resource                  hooks.robot