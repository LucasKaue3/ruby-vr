# language: pt

@vr_remover_textos
Funcionalidade: Remover texto após marcadores


  @remove_textos
  Esquema do Cenario: Remover texto após os marcadores especificados
    Dado que tenha a string de entrada <entrada>
    E os marcadores <marcadores>
    Quando remover o texto após os marcadores
    Então a saída esperada é <saida>

  Exemplos:
    | entrada                                            | marcadores | saida                          |
    | "bananas, tomates # e ventiladores"                | "#,!"      | "bananas, tomates"             |
    | "o rato roeu a roupa $ do rei % de roma"           | "%,!"      | "o rato roeu a roupa $ do rei" |
    | "the quick brown fox & jumped over * the lazy dog" | "&,*,%,!"  | "the quick brown fox"          |
