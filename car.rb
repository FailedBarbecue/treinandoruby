class Carro
    def get_km(information)
        km = find_km(information)
        puts km
    end

    private

    def find_km(information)
        /\d{2,}km\/h/.match(information)
    end
end


information = "Um fusca de cor amarela viaja a 80km/h"

carro = Carro.new

carro.get_km(information)