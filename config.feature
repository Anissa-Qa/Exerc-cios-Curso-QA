            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da Ebac-Shop
            Quero configurar meus produtos com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho.

            Contexto:
            Dado que eu acesse a pagina de compras Ebac-Shop e escolha um produto

            Cenário: Limitação de quantidade de produto igual
            Quando eu selecionar mais de 10 unidades do mesmo produtos
            Então deve ser exibida a mensagem de "limite de unidades por venda excedida"

            Cenário: Limpar configurações
            Quando eu selecionar tamanho, cor e quantidade
            E clicar no botão "voltar"
            Então deve voltar ao estado original da página

            Cenário: Seleções obrigatórias de cor, tamanho e quantidade
            Quando eu selecionar tamanho, cor e quantidade
            Então deve ser exibida a mensagem "produto adicionado ao carrinho"

            Cenário: Campos obrigatórios
            Quando eu não selecionar todos os campos obrigatórios
            Então deve exibir uma mensagem "campos obrigatórios não preenchido"

            Esquema do Cenário: Configuração de produto
            Quando eu selecionar no máximo <unidades> do mesmo produto
            E selecionar <cor>
            E selecionar <tamanho>
            Então deve ser exibida a <mensagem>

            Exemplo:
            | unidades | cor    | tamanho | mensagem                         |
            | 10       | valida | valido  | produto adicionado ao carrinho   |
            | 22       | valido | valido  | limite de unidade excedido       |
            | 5        | valido | vazio   | campo obrigatório não preenchido |
