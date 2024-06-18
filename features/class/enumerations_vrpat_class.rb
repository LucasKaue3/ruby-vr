# Esta classe é responsável por interagir com uma API da VR e buscar informações específicas com base em uma chave fornecida.
class EnumerationsVrpat
  # Este método faz uma requisição GET para a API da VR usando uma chave específica.
  def get_vrpat(chave)
    # Envia uma requisição GET para a URL configurada com um cabeçalho JSON.
    $response = HTTParty.get(
      $url_vrpat[$env],
      headers: { 'Content-Type' => 'application/json' }
    )
    
    # Verifica se a resposta da API contém a chave fornecida, se a chave mapeia para um array, e se o array não está vazio.
    if !$response.key?(chave.to_s) || !$response[chave.to_s].is_a?(Array) || $response[chave.to_s].empty?
      # Caso a chave não exista ou não contenha dados válidos, lança um erro com base na mensagem abaixo, podendo alterar a mensagem.
      raise ArgumentError, "Não foi localizado estabelecimentos para a chave [#{chave}], ou chave não existente"
    end

    # Seleciona aleatoriamente um dos estabelecimentos retornados pela API.
    estabelecimento_sorteado = $response[chave.to_s].sample
    
    # Exibe informações do estabelecimento sorteado no console.
    puts "Chave sorteada: #{estabelecimento_sorteado['key']}"
    puts "Nome: #{estabelecimento_sorteado['name']}"
    puts "Rótulo: #{estabelecimento_sorteado['label']}"
  end
end