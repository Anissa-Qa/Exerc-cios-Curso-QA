            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da Ebac-Shop
            Quero fazer meu login
            E visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página da Ebac-Shop

            Cenário: Dados válidos
            Quando eu digito o usuário "anissa@ebac.com.br"
            E a senha "entrar123"
            Então a página deve ser direcionada para a tela de checkout

            Cenário: Dados inválidos
            Quando eu digito o usuário "anissa@ebac.com.br"
            E a senha "entrar123"
            Então deve ser exibida a mensagem "usuário ou senha inválida"

            Esquema do Cenário: Validar login
            Quando eu digito o <usuario>
            E a <senha>
            Então deve ser exibida a <mensagem>

            Exemplos:
            | usuario  | senha    | mensagem                  |
            | valido   | valido   | direcionado para checkout |
            | valido   | inválido | usuario ou senha inválida |
            | inválido | válido   | usuario ou senha inválida |
            | invalido | invalido | usuario ou senha inválida |


