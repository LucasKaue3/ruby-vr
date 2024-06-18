#language: pt

@vr_api
Funcionalidade: Estabelecimento Randomico

  @get_valido
  Esquema do Cenario: Buscar Estabelecimento Válido
    Dado que eu realize um get na api VRPAT, valide a chave <chave>, e retorne aleatoriamente um estabelecimento
    Então retorna o código "200" com sucesso
    
  Exemplos:
    | chave                   |
    | "typeOfEstablishment"   |
