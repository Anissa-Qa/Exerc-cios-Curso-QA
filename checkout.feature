            #language: pt

            Funcionalidade: Tela de Cadastro - Checkout
            Como cliente da Ebac-Shop
            Quero concluir meu Cadastro
            E finalizar minha compras

            Contexto:
            Dado que eu acesse a página de checkout da Ebac-Shop

            Cenário: Dados obrigatórios
            Quando eu inserir todos os dados obrigatórios marcados com asterisco
            Então minha compra será finalizada

            Cenário: Validação do formato de e-mail
            Quando eu inserir meu e-mail em formato inválido "anissa.ebac.com.br"
            Então deve ser exibida a mensagem "formato inválido de e-mail"

            Cenário: Campo vazio
            Quando eu não completar todos os campos do cadastro
            Então deve ser exibida a mensagem "alerta campo vazio"


            Esquema do Cenário: Validação de cadastro
            Quando eu inserir meu <e-mail> em formato válido
            E preencher <nome>
            E <sobrenome>
            E <endereco>
            E <cidade>
            E <cep>
            E <telefone>
            E clicar em finalizar
            Então deve ser exibida a <mensagem>

            Exemplo:
            | e-mail   | nome   | sobrenome | endereco | cidade | cep    | telefone | mensagemm                  |
            | valido   | valido | valido    | valido   | valido | valido | valido   | compra finalizada          |
            | invalido | valido | valido    | valido   | valido | valido | valido   | formato inválido de e-mail |
            | valido   | valido | valido    | valido   | valido | valido | vazio    | campo vazio                |