require 'os'

def my_os
    if OS.windows?
        "Windows"
    elsif OS.linux?
        "Linux"
    elsif OS.mac?
        "OSX"
    else
        "Não consegui identificar"
    end
end

puts "\nMeu pc possui #{OS.cpu_count} cores, é #{OS.bits} bits e o sistema operacional é #{my_os}"

puts "\n"