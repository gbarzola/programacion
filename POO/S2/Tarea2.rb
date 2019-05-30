# Pregunta 2

# Realizar un programa orientado a Objetos para una empresa que calcule el pago de una planilla. 
# El pago mínimo es de 850.00 nuevos soles. Considerar que el pago se hace en base a un sueldo básico,
# horas extras, una bonificación que es el 10% del sueldo básico. Se deben aplicar los descuentos de ley 
# según el tipo de afp a la que pertenecen (01=profuturo, 02=integra, 03=Habitat, 04=Prima) de acuerdo a la siguiente tabla:

# AFP	%Fondo	%Seguro	Comisión
# 01	10.0	2.42	2.1
# 02	11.0	2.55	1.8
# 03	12.1	2.85	2.0
# 04	11.5	2.14	1.9

# Desarrollar el programa tomando en consideración que cada empleado es registrado con su DNI,
# nombre y apellido, sueldo básico y AFP a la que pertenecen.
# En el caso de las horas extras se tomará en cuenta que cada hora extra se paga a 5.0 soles la hora. 

# Elaborar un método que permita el cálculo de las horas extras de cada trabajador 
# Elaborar un método que permita el cálculo de los descuentos de cada trabajador 
# Elaborar un método que permita el cálculo de del sueldo neto del trabajador 
# Elaborar un método que permita el cálculo de la planilla total de la empresa.

class Trabajador
    
    attr_accessor :dni, :nombre, :apellido, :sueldo_base, :horas_extra, :afp
    
    def initialize dni,nombre,apellido,sueldo_base,horas_extra,afp
        @dni = dni
        @nombre = nombre
        @apellido = apellido
        @sueldo_base = sueldo_base
        @horas_extra = horas_extra
        @afp = afp
    end
    
    def imprimir_datos_trabajador 
        array = Array.new
        array.push(@dni)
        array.push(@nombre)
        array.push(@apellido)
        array.push(@sueldo_base)
        array.push(@horas_extra)
        array.push(@afp)
        
        return array
    end

end


def test
    
    puts "---------------------------"
    puts "Test de prueba"
    puts "---------------------------"
    
    trabajador1 = Trabajador.new 70442256,"ger","paz",5411,10,"01"
    trabajador2 = Trabajador.new 70456256,"luis","perez",3451,5,"01"
    trabajador3 = Trabajador.new 70443256,"pablo","salazar",5421,3,"02"
    trabajador4 = Trabajador.new 70442886,"fred","soto",3411,0,"03"
    trabajador5 = Trabajador.new 70442296,"hugo","jimenez",2411,6,"04"
    trabajador6 = Trabajador.new 70442254,"liz","lazo",2413,8,"04"
    
    planillas = [trabajador1,trabajador2,trabajador3,trabajador4,trabajador5,trabajador6]
    
    planillas.each do |planilla|
        
        puts "Cálculo de las horas extras del trabajador #{planilla.imprimir_datos_trabajador[1]} #{planilla.imprimir_datos_trabajador[2]} es #{planilla.imprimir_datos_trabajador[4]*5}"
        puts " "
    end
    
    planillas.each do |planilla|
        if(planilla.imprimir_datos_trabajador[5]=="01")
            puts "Cálculo de los descuentos de cada trabajador: Fondo es >> #{0.1*planilla.imprimir_datos_trabajador[3]}  Seguro es >> #{0.0242*planilla.imprimir_datos_trabajador[3]} y la comision >> 2.1"
            puts " "
        elsif (planilla.imprimir_datos_trabajador[5]=="02")
            puts "Cálculo de los descuentos de cada trabajador: Fondo es >> #{0.11*planilla.imprimir_datos_trabajador[3]}  Seguro es >> #{0.0255*planilla.imprimir_datos_trabajador[3]} y la comision >> 1.8"
            puts " "
        elsif (planilla.imprimir_datos_trabajador[5]=="03")
            puts "Cálculo de los descuentos de cada trabajador: Fondo es >> #{0.121*planilla.imprimir_datos_trabajador[3]}  Seguro es >> #{0.0285*planilla.imprimir_datos_trabajador[3]} y la comision >> 2.0"
            puts " "
        else (planilla.imprimir_datos_trabajador[5]=="04")
            puts "Cálculo de los descuentos de cada trabajador: Fondo es >> #{0.115*planilla.imprimir_datos_trabajador[3]}  Seguro es >> #{0.0214*planilla.imprimir_datos_trabajador[3]} y la comision >> 1.9"
            puts " "
        end
    end
    suma = 0
    n=planillas.size()
     planillas.each do |planilla|
        if(planilla.imprimir_datos_trabajador[5]=="01")
            puts "Cálculo de las sueldo neto del trabajador #{planilla.imprimir_datos_trabajador[1]} #{planilla.imprimir_datos_trabajador[2]} es #{planilla.imprimir_datos_trabajador[3]-0.10*planilla.imprimir_datos_trabajador[3]-0.0242*planilla.imprimir_datos_trabajador[3]-2.1+planilla.imprimir_datos_trabajador[4]*5}"
            puts " "
            suma = suma + planilla.imprimir_datos_trabajador[3]-0.100*planilla.imprimir_datos_trabajador[3]-0.0242*planilla.imprimir_datos_trabajador[3]-2.1+planilla.imprimir_datos_trabajador[4]*5
        elsif (planilla.imprimir_datos_trabajador[5]=="02")
            puts "Cálculo de las sueldo neto del trabajador #{planilla.imprimir_datos_trabajador[1]} #{planilla.imprimir_datos_trabajador[2]} es #{planilla.imprimir_datos_trabajador[3]-0.11*planilla.imprimir_datos_trabajador[3]-0.0255*planilla.imprimir_datos_trabajador[3]-1.8+planilla.imprimir_datos_trabajador[4]*5}"
            puts " "
            suma = suma + planilla.imprimir_datos_trabajador[3]-0.110*planilla.imprimir_datos_trabajador[3]-0.0255*planilla.imprimir_datos_trabajador[3]-1.8+planilla.imprimir_datos_trabajador[4]*5
        elsif (planilla.imprimir_datos_trabajador[5]=="03")
            puts "Cálculo de las sueldo neto del trabajador #{planilla.imprimir_datos_trabajador[1]} #{planilla.imprimir_datos_trabajador[2]} es #{planilla.imprimir_datos_trabajador[3]-0.121*planilla.imprimir_datos_trabajador[3]-0.0285*planilla.imprimir_datos_trabajador[3]-2.0+planilla.imprimir_datos_trabajador[4]*5}"
            puts " "
            suma = suma + planilla.imprimir_datos_trabajador[3]-0.121*planilla.imprimir_datos_trabajador[3]-0.0285*planilla.imprimir_datos_trabajador[3]-2.0+planilla.imprimir_datos_trabajador[4]*5
        else (planilla.imprimir_datos_trabajador[5]=="04")
            puts "Cálculo de las sueldo neto del trabajador #{planilla.imprimir_datos_trabajador[1]} #{planilla.imprimir_datos_trabajador[2]} es #{planilla.imprimir_datos_trabajador[3]-0.115*planilla.imprimir_datos_trabajador[3]-0.0214*planilla.imprimir_datos_trabajador[3]-1.9+planilla.imprimir_datos_trabajador[4]*5}"
            puts " "
            suma = suma + planilla.imprimir_datos_trabajador[3]-0.115*planilla.imprimir_datos_trabajador[3]-0.0214*planilla.imprimir_datos_trabajador[3]-1.9+planilla.imprimir_datos_trabajador[4]*5
        end
        n = n-1
        if(n==0)
            puts " "
            puts "cálculo de la planilla total de la empresa es : #{suma/planillas.size()}"
            puts " "    
        end
        
    end
    
end

test