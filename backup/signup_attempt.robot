*** Settings ***
Documentation        Cenários de tentativa de cadastro com senhas muito curtas

Resource    ../resources/base.resource
Test Template    Short password

Test Setup        Start Session
Test Teardown     Take Screenshot

*** Test Cases ***

Não deve logar com senha de 1 digito     1

Não deve logar com senha de 2 digitos    2

Não deve logar com senha de 3 digitos    3

Não deve logar com senha de 4 digitos    4

Não deve logar com senha de 5 digitos    5


*** Keywords ***

Short password
    [Arguments]    ${short_pass}

    ${user}        Create Dictionary
    ...            name=Luna Corso
    ...            email=luna.corso@gmail.com
    ...            password=${short_pass}

    Go to signup page
    Submit signup form        ${user}

    Alert should be    Informe uma senha com pelo menos 6 digitos
