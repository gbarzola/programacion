# Pregunta 1

# Un Club de Socios de Asia ha decidido desarrollar un programa para gestionar los 
# datos de sus socios y el cálculo de la membresía anual.
# A los socios se les solicita su número de DNI, nombre y apellido, y edad. 
# Los socios pueden ser fundadores, invitados u honorarios.
# En el caso de los socios fundadores e invitados se solicita además la cantidad
# de dependientes a su cargo (sólo el número, esposa + hijos menores de 18 años).

# La membresía anual se calcula de esta forma:
# Membresía anual (en soles) = Factor_edad * 200 + Dependientes * 100

# Donde: 
# Factor_edad = 5, si la edad del socio está entre 18 y 30 años.
# Factor_edad = 4, si la edad del socio está entre 31 y 50 años.
# Factor_edad = 3, si la edad del socio es mayor a 51 años.

# Los socios fundadores tienen además un descuento del 20% en la membresía anual.
# Y en el caso de los socios honorarios la membresía anual es simplemente 
# 200 soles (no se tiene en cuenta la fórmula general pues no se les permite dependientes).

# Desarrollar las clases y sus relaciones usando herencia y polimorfismo. 
# Elaborar un método que permita el cálculo de la Membresía anual de cada socio.
# Elaborar un método que liste los socios del club indicando su tipo y su membresía anual a pagar.
# Elaborar un método que muestre el total a recaudar por membresías. 

class Socio

    attr_accessor :dni, :nombre, :apellido, :edad

    def initialize(dni,nombre,apellido,edad)
        @dni,@nombre,@apellido,@edad = dni,nombre,apellido,edad
    end
    
    def calcular_membresia_anual
    end
    
    def factor_edad
        if @edad >= 18 && @edad <= 30
            5
        elsif @edad >= 31 && @edad <= 50
            4
        else @edad >= 51
            3
        end
                
    end
    
    def tipo
    end
end

class Fundador < Socio

    attr_accessor :cantidad_dependientes
    
    def initialize(dni, nombre, apellido, edad, cantidad_dependientes)
        super(dni, nombre, apellido, edad)
        @cantidad_dependientes = cantidad_dependientes
    end
    
    def calcular_membresia_anual
        (factor_edad*200 + cantidad_dependientes*100)*0.80
    end
    
    def tipo
        "Fundador"
    end
    
end

class Invitado < Socio

    attr_accessor :cantidad_dependientes
    
    def initialize(dni, nombre, apellido, edad, cantidad_dependientes)
        super(dni, nombre, apellido, edad)
        @cantidad_dependientes = cantidad_dependientes
    end
    
    def calcular_membresia_anual
        factor_edad*200 + cantidad_dependientes*100
    end
    
    def tipo
        "Invitado"
    end
    
end

class Honorario < Socio
    
    def initialize(dni, nombre, apellido, edad)
        super(dni, nombre, apellido, edad)
    end
    
    def calcular_membresia_anual
        200
    end
    
    def tipo
        "Honorario"
    end
    
end

class Administrador
   attr_accessor :arreglo_socios
   def initialize
   	  @arreglo_socios = [] # Array.new
   end
   
   def registrar(socio)
   	  arreglo_socios.push(socio)
   end
   
   def imprimir_listado
        puts "Listado :"
   	    for p in arreglo_socios
   	  	    puts "#{p.nombre}  #{p.calcular_membresia_anual} #{p.tipo}"
       	end
   end
   
   def suma_total_membresia
        suma = 0
   	    for p in arreglo_socios
   	  	    suma = suma + p.calcular_membresia_anual
       	end
       	puts "Suma Total : #{suma}"
   end
   
end

s1 = Fundador.new("88888888","Alicia","Salas",35,20)
puts s1.calcular_membresia_anual
s2 = Invitado.new("88888888","Fernando","Hurtado",33,10)
puts s2.calcular_membresia_anual
s3 = Honorario.new("88888888","Gerardo","Paz",25)
puts s3.calcular_membresia_anual

adm = Administrador.new
adm.registrar(s1)
adm.registrar(s2)
adm.registrar(s3)
adm.imprimir_listado
adm.suma_total_membresia