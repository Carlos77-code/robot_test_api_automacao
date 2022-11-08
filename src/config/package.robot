*** Settings ***
Documentation            Aqui fica o Gerenciador de dependencia da automação


##        Libraries        ##
Library                  RequestsLibrary
Library                  Collections
Library                  Builtin


##        Keywords        ##
Resource                  ../auto/keywords/kws_GET_Books.robot
Resource                  ../auto/keywords//kws_GET_Books_Id.robot


##        Variables        ##
Resource                  ../auto/variables/var_GET_Books.robot
Resource                  ../auto//variables//var_GET_Books_Id.robot


##        hooks        ##
Resource                  hooks.robot