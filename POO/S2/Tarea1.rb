# Pregunta 1

# Una empresa desea poder calcular el sueldo de sus trabajadores.
# Para ello requiere que usted implemente parte de ese sistema. 
# La empresa tiene tres tipos de trabajadores. Todo trabajador es identificado por su dni, 
# su nombre, su apellido y el sueldo base que recibe según contrato. 
# Sin embargo, por el tipo de empresa de ventas multinivel tienen problemas 
# para calcular el sueldo total con los bonos de los trabajadores. 

# Los tres tipos de trabajadores están determinados por los nombres 
# Junior, Intermedio y Senior. La forma de cálculo de sus bonos es la siguiente

# Bono Junior: Cantidad de miembros de su tipo * 0.25 + Monto de Ventas Promedio * Cantidad de miembros de su tipo. 
# Bono Intermedio: Cantidad de miembros de su tipo * 0.05 + Monto de Ventas Promedio * 10 + 500. 
# Bono Senior: (100 + Monto de Ventas Promedio * 5) + Cantidad de miembros de su pirámide. 

# Se le pide desarrollar lo siguiente:

# a)	Obtener el total de bonos a pagar de todos los trabajadores independientemente del tipo de trabajador.
# b)	Calcular el monto del bono de un trabajador dado su dni. 
# c)	Calcular el promedio general de todos los bonos, sin importar el tipo. 
# d)	Imprimir todos los datos del trabajador que gana más.

class Trabajador
    
    attr_accessor :dni, :nombre, :apellido, :sueldo_base, :tipo_trabajador, :venta
    
    def initialize dni,nombre,apellido,sueldo_base,tipo_trabajador,venta
        @dni = dni
        @nombre = nombre
        @apellido = apellido
        @sueldo_base = sueldo_base
        @tipo_trabajador = tipo_trabajador
        @venta = venta
    end
    
    def imprimir_datos_trabajador 
        array = Array.new
        array.push(@dni)
        array.push(@nombre)
        array.push(@apellido)
        array.push(@sueldo_base)
        array.push(@tipo_trabajador)
        array.push(@venta)
        
        return array
    end

end


def test
    
    puts "---------------------------"
    puts "Test de prueba"
    puts "---------------------------"
    
    trabajador1 = Trabajador.new 70442256,"ger","narz",5411,"junior",5111
    trabajador2 = Trabajador.new 70456256,"luis","narz",5411,"intermedio",45111
    trabajador3 = Trabajador.new 70443256,"pablo","narz",5411,"junior",5111
    trabajador4 = Trabajador.new 70442886,"fred","narz",5411,"junior",5111
    trabajador5 = Trabajador.new 70442296,"hugo","narz",5411,"senior",52111
    trabajador6 = Trabajador.new 70442254,"liz","narz",5411,"senior",51131
    
    planillas = [trabajador1,trabajador2,trabajador3,trabajador4,trabajador5,trabajador6]
    
    n=0
    
    planillas.each do |planilla|
        n = n + 1
    end
    
    puts "El total de bonos a pagar de todos los trabajadores independientemente del tipo de trabajador es #{n}"
    puts " "
    
    cantidad_junior=0
    cantidad_intermedio=0
    cantidad_senior=0
    
    planillas.each do |planilla|
        if(planilla.imprimir_datos_trabajador[4]=="junior")
            cantidad_junior= cantidad_junior+1
        elsif (planilla.imprimir_datos_trabajador[4]=="intermedio")
            cantidad_intermedio= cantidad_intermedio+1
        else
            cantidad_senior= cantidad_senior+1
        end
    end
    
    n=planillas.size()
    
    planillas.each do |planilla|
        if(planilla.imprimir_datos_trabajador[0]="70443256")
            if(planilla.imprimir_datos_trabajador[4]=="junior")
                bono = cantidad_junior*(0.25+planilla.imprimir_datos_trabajador[5])
            elsif (planilla.imprimir_datos_trabajador[4]=="intermedio")
                bono = cantidad_intermedio*(0.05)+planilla.imprimir_datos_trabajador[5]*10 + 500
            else
                bono = (100+planilla.imprimir_datos_trabajador[5]*10)*cantidad_senior
            end
        end
        n = n - 1
        if(n==0)
            puts " "
            puts "Calcular el monto del bono de un trabajador dado su dni 70443256 es #{bono}"
            puts " "
        end
    end
    
        
    suma = 0
    planillas.each do |planilla|
        suma = suma + planilla.imprimir_datos_trabajador[5]
    end
        puts " "
        puts "Calcular el promedio general de todos los bonos, sin importar el tipo es #{(suma/planillas.size()).to_i}"
        puts " "
    
    
    n=planillas.size()
    mayor=0
    nombre=""
    planillas.each do |planilla|
        
        if(mayor<planilla.imprimir_datos_trabajador[5])
            mayor = planilla.imprimir_datos_trabajador[5]
            nombre = planilla.imprimir_datos_trabajador[1]
        end
    
        n = n - 1
        if(n==0)
            puts " "
            puts "Imprimir todos los datos del trabajador que gana más es : #{nombre}"
            puts " "    
        end
    end
end

test