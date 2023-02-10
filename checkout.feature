            #language: pt

            Funcionalidade: Tela de cadastro - Checkout

            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Cenário: Conclusão com dados válidos
            Dado que eu estou na página de cadastro
            Quando eu preencho todos os campos obrigatórios
            E clico em "Concluir Cadastro"
            Então eu sou direcionado para a tela de finalização da compra

            Esquema do Cenário: Conclusão multipla de usuários
            Quando eu clicar no <campo>
            E digitar a <entrada>
            Então Então sou direcionado para tela de finalização da compra com <sucesso>

            Exemplos:
            | campo         | entrada            | resultado_esperado |
            | Nome Completo | João da Silva      | Sucesso            |
            | E-mail        | joaosilva@ebac.com | Sucesso            |
            | Senha         | 123456             | Sucesso            |


Cenário: Conclusão com formato inválido de e-mail
Dado que eu estou na página de cadastro
Quando eu preencho um e-mail inválido
Então eu vejo uma mensagem de erro "Formato de e-mail inválido"

Cenário: Conclusão com campos obrigatórios vazios
Dado que eu estou na página de cadastro
Quando eu clico em "Concluir Cadastro" sem preencher algum campo obrigatório
Então eu vejo uma mensagem de alerta "Por favor, preencha todos os campos obrigatórios marcados com asterisco"
