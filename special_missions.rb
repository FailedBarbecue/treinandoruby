# primeiro desafio

numbers = []

print "digite o primeiro número: "

number1 = gets.chomp.to_i

print "digite o segundo número: "

number2 = gets.chomp.to_i

print "digite o terceiro número: "

number3 = gets.chomp.to_i

numbers.push(number1, number2, number3)

numbersPotency = numbers.map do |number|
    number*number
end

puts numbersPotency

# Segundo desafio

nomes = {}

print "Insira o primeiro nome: "

nome1 = gets.chomp

print "Insira o primeiro sobrenome: "

sobrenome1 = gets.chomp

print "Insira o segundo nome: "

nome2 = gets.chomp

print "Insira o segundo sobrenome: "

sobrenome2 = gets.chomp

print "Insira o terceiro nome: "

nome3 = gets.chomp

print "Insira o terceiro sobrenome: "

sobrenome3 = gets.chomp

nomes.store(nome1,sobrenome1)
nomes.store(nome2,sobrenome2)
nomes.store(nome3,sobrenome3)

nomes.each do |nome, sobrenome|
    puts "Uma das chaves é #{nome} e o seu valor é #{sobrenome}"
end

# Terceiro desafio

numbers = { A: 10, B: 30, C: 20, D: 25, E: 15}

puts "\n#{numbers}"

maiorValor = 0

valor_final = []

numbers.each do |key,value|
    if value > maiorValor
        maiorValor = value
        valor_final = [key, value]
    end
end

puts "\nO maior valor é #{valor_final}"

# Quarto desafio

def calc(number, numberPotency)
    puts "\nQual número que você que seja elevado a potência? "
    print "Número: "
    number = gets.chomp.to_i
    puts "\n Qual potência você escolhe? "
    print "Número: "
    numberPotency = gets.chomp.to_i
    result = number ** numberPotency
    puts "\no resultado do número #{number} na potência #{numberPotency} é #{result}"
end
    

calc('number', 'numberPotency')

# Quinto desafio

require 'cpf_cnpj'

def validacao(cpf)
    puts "\n Informe algum CPF"
    print "\n CPF: "

    cpf = gets.chomp

 if CPF.valid?(cpf)
   puts "CPF válido"
 else
   puts "CPF inválido"
 end
end

validacao('cpf')

class Esportista
    def competir
        puts 'Participando de uma competição'
    end
end

class JogadorDeFutebol < Esportista
    def correr
        puts 'Correndo atrás da bola'
    end
end

class Maratonista < Esportista
    def correr
        puts 'Percorrendo o circuito'
    end
end

esportista = Esportista.new
jogadorDeFutebol = JogadorDeFutebol.new
maratonista = Maratonista.new

jogadorDeFutebol.competir
jogadorDeFutebol.correr
maratonista.competir
maratonista.correr


def capitalize_name(lambda_capitalize)
    lambda_capitalize.call('eduardo')
    lambda_capitalize.call('schiavo')
end

lambda_capitalize = -> (name) { puts name.capitalize }

capitalize_name(lambda_capitalize)

module Person 
    class Juridic
        def initialize(name, cnpj)
            @name = name
            @cnpj = cnpj
        end

        def add
            puts 'Pessoa jurídica adicionada'
            puts "Nome: #{@name}"
            puts "cnpj #{@cnpj}"
            puts "\n"
        end
    end
    
    class Physical
        def initialize(name, cpf)
            @name = name
            @cpf = cpf
        end
        
        def add 
            puts 'Pessoa física adicionada'
            puts "Nome: #{@name}"
            puts "cpf #{@cpf}" 
            puts "\n"
        end
    end
end

Person::Juridic.new('Duduzin Empresas LTDA', '4241.123/0001').add
Person::Physical.new('Eduardo Schiavo', '14527123955').add