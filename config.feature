#language: pt

Funcionalidade: Configuração de produto na EBAC-SHOP

Como cliente da EBAC-SHOP
Eu quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Cenário: Seleção obrigatória
Dado que eu estou na página de detalhes do produto
Quando eu seleciono as opções de cor, tamanho e quantidade
Então as seleções de cor, tamanho e quantidade devem ser obrigatórias

Cenário: Limite de 10 produtos por venda
Dado que eu estou na página de detalhes do produto
Quando eu tento selecionar mais de 10 produtos
Então a aplicação deve impedir a seleção de mais de 10 produtos por venda

Cenário: Botão de limpar
Dado que eu estou na página de detalhes do produto
Quando eu clico no botão "limpar"
Então as seleções de cor, tamanho e quantidade devem ser resetadas ao estado original
