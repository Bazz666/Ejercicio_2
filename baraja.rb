class Carta 
    attr_reader :numero, :color 
    
    def initialize(numero,color)

        colores = ['C', 'D','E','T']
        if (numero >=1 && numero <=13) && colores.include?(color)
            @numero=numero
            @color = color
        else
            
        end
    end
end

#--------------------------------------------------
class Mazo
    attr_accessor :cartas
    def initialize(cartas)
        colores = ['C','D','E','T']
        @cartas =[]
        colores.each do |color|
            13.times do |num|
             @cartas.push(Carta.new(num+1,color))
            end
        end
    end

    def barajar        
        @cartas = @cartas.shuffle
    end

    def sacar
        @cartas.pop
    end

    def repartir_mano
        @cartas.pop *5
        
    end
end
#----------------------------------------------
colores = ['C', 'D','E','T']
m1= Mazo.new(Carta.new(rand(1..13),colores.sample))
puts "\n baraja creada \n#{m1}"
puts "\n su baraja tiene las siguientes cartas \n  #{m1.cartas}"
puts "\n mazo barajado : #{m1.barajar} \n"
puts "\n su carta al azar es #{m1.sacar} \n" 
puts "\n sus 5 cartas son :\n#{m1.repartir_mano}"