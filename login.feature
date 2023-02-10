            #language: pt

            Funcionalidade: Login na plataforma

            Como cliente da EBAC-SHOP
            Quero fazer o login autenticação na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesso a página de autenticação da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "exemplo@gmail.com"
            E a senha "12346"
            Então deve direcionar para a página de checkout

            Cenário: Login com dados inválidos
            Dado que eu estou na página de login
            Quando eu insiro meu nome de usuário
            E ou senha invalida
            Então eu vejo uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve direcionar para a página de <pagina>

            Exemplos:
            | usuario            | senha   | pagina   |
            | exemplo1@gmail.com | @1234   | checkout |
            | exemplo2@gmail.com | @1234** | checkout |
