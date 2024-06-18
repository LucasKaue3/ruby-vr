Dado('que eu realize um get na api VRPAT, valide a chave {string}, e retorne aleatoriamente um estabelecimento') do |chave|
    enumerationsVrpat.get_vrpat(chave)
end