result = ''

loop do
    puts result
    puts 'O que você deseja fazer?'
    puts '1 - Fazer um calculo'
    puts '0 - Sair'
    print 'Opção: '
    option = gets.chomp.to_i
    if option == 1
        puts 'Qual calculo você deseja fazer?'
        puts '1 - Adição'
        puts '2 - Subtração'
        puts '3 - Divisão'
        puts '4 - Multiplicação'
        puts '0 - Sair'
        print 'Opção: '
        option = gets.chomp.to_i
    if option == 1
        print 'Digite o primeiro número: '
        numero1 = gets.chomp.to_i
        print 'Digite o segundo número: '
        numero2 = gets.chomp.to_i
        answer = numero1 + numero2
        result = "A adição entre #{numero1} e #{numero2} é #{answer}"
    elsif option == 2 
        print 'Digite o primeiro número: '
        numero1 = gets.chomp.to_i
        print 'Digite o segundo número: '
        numero2 = gets.chomp.to_i
        answer = numero1 - numero2
        result = "A subtração entre #{numero1} e #{numero2} é #{answer}"
    elsif option == 3
        print 'Digite o primeiro número: '
        numero1 = gets.chomp.to_i
        print 'Digite o segundo número: '
        numero2 = gets.chomp.to_i
        answer = numero1 / numero2
        result = "A divisão entre #{numero1} e #{numero2} é #{answer}"
    elsif option == 4
        print 'Digite o primeiro número: '
        numero1 = gets.chomp.to_i
        print 'Digite o segundo número: '
        numero2 = gets.chomp.to_i
        answer = numero1 * numero2
        result = "A subtração entre #{numero1} e #{numero2} é #{answer}"
    elsif option == 0

        break
    else 
        result = 'Opção inválida'
    end
elsif option == 0

    break
else

    result = 'Opção inválida'
end
system "clear"

end
