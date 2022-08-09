def talk(first_name, last_name)
    puts "Olá #{first_name} #{last_name}, como você está?"
end


talk('Eduardo', 'Schiavo')
talk('Sabrina', 'Schiavo')

def signal(color = 'vermelho')
    puts "O sinal está #{color}"
end

signal 

signal('verde')