#language:pt

Funcionalidade: Busca
    Para que eu possa ver a lista de cursos disponiveis
    Sendo um aluno
    Posso buscar um curso no portal

    Cenario: Curso não encontrado

        Quando eu faço uma busca pelo termo "Selenium IDE"
        Então devo ver a seguinte notificação "Desculpe não encontramos o curso que procura =("