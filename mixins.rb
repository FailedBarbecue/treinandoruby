module ImpressaoDecorada
    def imprimir text
        decoracao = '#' * 100
        puts decoracao
        puts text
        puts decoracao
    end
end

module Pernas
    include ImpressaoDecorada

    def chute_frontal
        imprimir 'Chute Frontal'
    end

    def chute_lateral
        imprimir 'Chute Lateral'
    end
end

module Bracos
    include ImpressaoDecorada
    
    def jab_de_direita
        imprimir 'jab de direita'
    end

    def jab_de_esquerda
        imprimir 'jab de esquerda'
    end

    def gancho
        imprimir 'Gancho'
    end
end

class Duduzin
    include Pernas
    include Bracos
end

class Levito
    include Pernas
end

duduzin = Duduzin.new
duduzin.chute_frontal
duduzin.jab_de_direita

levito = Levito.new
levito.chute_lateral
