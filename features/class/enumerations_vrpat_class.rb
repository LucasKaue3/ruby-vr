# encode: UTF-8

class EnumerationsVrpat
  def get_vrpat(chave)
    $response = HTTParty.get(
      $url_vrpat[$env],
      headers: { 'Content-Type' => 'application/json' }
    )
    if !$response.key?("#{chave}") || !$response["#{chave}"].is_a?(Array) || $response["#{chave}"].empty?
      raise ArgumentError, "Não foi localizado estabelecimentos para a chave [#{chave}], ou chave não existente"
    end

    estabelecimento_sorteado = $response["#{chave}"].sample
    puts "Chave sorteada: #{estabelecimento_sorteado['key']}"
    puts "Nome: #{estabelecimento_sorteado['name']}"
    puts "Rótulo: #{estabelecimento_sorteado['label']}"
  end
end
