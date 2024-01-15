*** Settings ***

Resource    ../resources/base.resource

*** Test Cases ***

Selecione Padawan

    Start session
    Get started
    Navigate to    Formulários
    Go to item    Cadastro    Crie sua conta.

    Selecione nivel    Padawan

    Close session


Selecione Jedi

    Start session
    Get started
    Navigate to    Formulários
    Go to item    Cadastro    Crie sua conta.

    Selecione nivel    Jedi

    Close session

Selecione Sith

    Start session
    Get started
    Navigate to    Formulários
    Go to item    Cadastro    Crie sua conta.

    Selecione nivel    Sith

    Close session
    

Selecione Outros
    [Tags]    outros
    Start session
    Get started
    Navigate to    Formulários
    Go to item    Cadastro    Crie sua conta.

    Selecione nivel    Outros

    Close session