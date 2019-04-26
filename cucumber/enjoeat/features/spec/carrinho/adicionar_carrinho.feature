#language: pt

Funcionalidade: Adicionar ao carrinho
    Para que eu possa finalizar uma compra
    Sendo um cliente que já decidiu o que deseja comer
    Posso adicionar intens ao meu carrinho

        Cenario: Adicionar 1 unidade

            Dado que o produto desejado é "Cup Cake"
            E o valor do produto é "R$ 8,70"
            Quando eu adiciono 1 unidade
            Então 1 unidade deste produto deve ser adicionado ao carrinho
            E o valor total deve ser de "8,70"

        Cenario: Adicionar 2 unidades

            Dado que o produto desejado é "Donut"
            E o valor do produto é "R$ 2,50"
            Então 2 unidades devem ser adicionados ao carrinho
            E o valor total deve ser de "R$5,00"

        Cenario: Adicionar varios itens

            Dado que os produtos desejados são:
                | nome                   | preco   |
                | Cup Cake               | R$ 8,70 |
                | Donut                  | R$2,50  |
                | Pão artesenal Italiano | R$15,90 |
            Quando eu adiciono todos os itens
            Então vejo todos os itens no carrinho
            E valor total deve ser de "R$ 27,10"
