Dado('que tenha a string de entrada {string}') do |entrada|
    @entrada = entrada
end
  
E('os marcadores {string}') do |marcadores|   
    @marcadores = marcadores.split(',')
end
  
Quando('remover o texto após os marcadores') do
    @saida = removeTextos.remover_texto_apos_marcadores(@entrada, @marcadores)
end
  
Então('a saída esperada é {string}') do |saida_esperada|   
    removeTextos.compara_saida(@saida, saida_esperada)
end
