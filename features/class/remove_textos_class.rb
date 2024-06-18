# Classe para remover partes de uma string com base em marcadores e comparar saídas de texto.
class RemoveTextos
    # Método para remover texto após marcadores especificados de uma string de entrada.
    def remover_texto_apos_marcadores(string_entrada, marcadores)
        # Itera sobre cada marcador fornecido.
        marcadores.each do |marcador|
          # Divide a string de entrada no marcador e mantém apenas a parte antes do marcador.
          string_entrada = string_entrada.split(marcador).first
        end
        # Remove espaços extras do início e do fim da string resultante.
        string_entrada.strip
    end

    # Método para comparar a saída obtida com a saída esperada e apresentar um erro se não forem iguais.
    def compara_saida(saida, saida_esperada)
        # Retorna um erro se a saída obtida for diferente da saída esperada, incluindo uma mensagem detalhando ambas as saídas.
        raise ArgumentError, "Saida obtida: #{saida}, Saida esperada: #{saida_esperada}" if saida != saida_esperada
    end
end
