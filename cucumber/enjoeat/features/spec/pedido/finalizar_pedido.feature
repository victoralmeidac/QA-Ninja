#language: pt

@green_food
Funcionalidade: Finalizar pedido
    Para que eu possa receber o pedido no meu endereço
    Sendo um usuario fechou o carrinho com itens
    Posso finalizar meu pedido

    @smoke
    Cenario: Finalizar pedido com Cartão Refeição

        Dado que eu fechei o pedido com os itens:
            | quantidade | nome                | descricao                                | subtotal |
            | 1          | Suco Detox          | Suco de couve, cenoura, salsinha e maçã. | R$ 14,90 |
            | 2          | Hamburger de Quinoa | Cheio de fibras e muito saboroso.        | RS 21,00 |
        E informei os meus dados de entrega:
            | nome        | Fernando         |
            | email       | eu@papito.io     |
            | rua         | Avenida Paulista |
            | numero      | 1000             |
            | complemento | 17 andar         | 
        Quando eu finalizo o pedido com "Cartão Refeição"
        Então devo ver a seguint mensagem: 
        """
        Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
        """