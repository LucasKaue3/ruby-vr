class RemoveTextos
    def remover_texto_apos_marcadores(string_entrada, marcadores)
        marcadores.each do |marcador|
          string_entrada = string_entrada.split(marcador).first
        end
        string_entrada.strip
    end

    def compara_saida(saida, saida_esperada)
        raise ArgumentError, "Saida obtida: #{saida}, Saida esperada #{saida_esperada}" if saida != saida_esperada
    end
end