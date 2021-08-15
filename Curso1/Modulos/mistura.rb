require_relative 'componente_a'
require_relative 'componente_b'

class Mistura
    include A
    include B

    def m1
        puts "m1"
    end
end