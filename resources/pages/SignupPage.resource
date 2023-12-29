*** Settings ***
Documentation        Elementos e ações da página de cadastro

Library              Browser
Resource             ../env.resource

*** Keywords ***

Go to signup page

    Go To          ${BASE_URL}/signup
    
    # checkpoint de navegação
    Wait For Elements State    css=h1    visible    5
    Get Text                   css=h1    equal      Faça seu cadastro

Submit signup form
    [Arguments]    ${user}

    Fill Text    css=input[name=name]               ${user}[name]
    Fill Text    xpath=//input[@id="email"]         ${user}[email]
    Fill Text    css=#password                      ${user}[password]

# css=input[placeholder=E-mail]

    Click        id=buttonSignup
# button[type=submit]
# //button[text()="Cadastrar"]

 