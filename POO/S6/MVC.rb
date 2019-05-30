class Vista
    def mostrar(m)
        puts "El valor de la multiplicacion #{m}"
    end
end

class Modelo
    def multiplicar (a,b)
        a*b
    end
end

class Controlador
    attr_accessor :modelo, :vista
    def initialize (modelo, vista)
        @modelo, @vista = modelo, vista
    end
    def multiplica(a,b)
        m=modelo.multiplicar(a,b)
        vista.mostrar(m)
    end
end

vista = Vista.new
modelo = Modelo.new
controlador = Controlador.new(modelo,vista)
controlador.multiplica(20,2)