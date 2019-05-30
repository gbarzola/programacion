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
        t1 = Array.new
        t1.push(@dni)
        t1.push(@nombre)
        t1.push(@apellido)
        t1.push(@sueldo_base)
        t1.push(@tipo_trabajador)
        t1.push(@venta)
        
        t2 = Array.new
        t2.push(@dni)
        t2.push(@nombre)
        t2.push(@apellido)
        t2.push(@sueldo_base)
        t2.push(@tipo_trabajador)
        t2.push(@venta)
        
        t3 = Array.new
        t3.push(@dni)
        t3.push(@nombre)
        t3.push(@apellido)
        t3.push(@sueldo_base)
        t3.push(@tipo_trabajador)
        t3.push(@venta)
        
        array.push(t1)
        array.push(t2)
        array.push(t3)
        
        return array
    end

    def cantidad_bonos
        
        cantidad_junior=0
        cantidad_intermedio=0
        cantidad_senior=0
        
        if(t1[4]=="junior")
            cantidad_junior= cantidad_junior+1
        elsif (t1[4]=="intermedio")
            cantidad_intermedio= cantidad_intermedio+1
        else
            cantidad_senior= cantidad_senior+1
        end
        
        if(t2[4]=="junior")
            cantidad_junior= cantidad_junior+1
        elsif (t2[4]=="intermedio")
            cantidad_intermedio= cantidad_intermedio+1
        else
            cantidad_senior= cantidad_senior+1
        end
        
        if(t3[4]=="junior")
            cantidad_junior= cantidad_junior+1
        elsif (t3[4]=="intermedio")
            cantidad_intermedio= cantidad_intermedio+1
        else
            cantidad_senior= cantidad_senior+1
        end
        
        return cantidad_junior+cantidad_intermedio+cantidad_senior
        
    end
    
    def monto_a_pagar_bonos
        
        cantidad_junior=0
        cantidad_intermedio=0
        cantidad_senior=0
        
        if(t1[4]=="junior")
            cantidad_junior= cantidad_junior+1
        elsif (t1[4]=="intermedio")
            cantidad_intermedio= cantidad_intermedio+1
        else
            cantidad_senior= cantidad_senior+1
        end
        
        if(t2[4]=="junior")
            cantidad_junior= cantidad_junior+1
        elsif (t2[4]=="intermedio")
            cantidad_intermedio= cantidad_intermedio+1
        else
            cantidad_senior= cantidad_senior+1
        end
        
        if(t3[4]=="junior")
            cantidad_junior= cantidad_junior+1
        elsif (t3[4]=="intermedio")
            cantidad_intermedio= cantidad_intermedio+1
        else
            cantidad_senior= cantidad_senior+1
        end
        
        if(t1[4]=="junior")
            bono1 = cantidad_junior*(0.25+t1[5])
        elsif (t1[4]=="intermedio")
            bono1 = cantidad_intermedio*(0.05)+t1[5]*10 + 500
        else
            bono1 = (100+t1[5]*10)*cantidad_senior
        end
        
        if(t2[4]=="junior")
            bono2 = cantidad_junior*(0.25+t2[5])
        elsif (t2[4]=="intermedio")
            bono2 = cantidad_intermedio*(0.05)+t2[5]*10 + 500
        else
            bono2 = (100+t2[5]*10)*cantidad_senior
        end
        
        if(t3[4]=="junior")
            bono3 = cantidad_junior*(0.25+t3[5])
        elsif (t3[4]=="intermedio")
            bono3 = cantidad_intermedio*(0.05)+t3[5]*10 + 500
        else
            bono3 = (100+t3[5]*10)*cantidad_senior
        end
        
        return bono1+bono2+bono3
        
    end
    
    def monto_a_pagar_bonos
        
        cantidad_junior=0
        cantidad_intermedio=0
        cantidad_senior=0
        
        if(t1[4]=="junior")
            cantidad_junior= cantidad_junior+1
        elsif (t1[4]=="intermedio")
            cantidad_intermedio= cantidad_intermedio+1
        else
            cantidad_senior= cantidad_senior+1
        end
        
        if(t2[4]=="junior")
            cantidad_junior= cantidad_junior+1
        elsif (t2[4]=="intermedio")
            cantidad_intermedio= cantidad_intermedio+1
        else
            cantidad_senior= cantidad_senior+1
        end
        
        if(t3[4]=="junior")
            cantidad_junior= cantidad_junior+1
        elsif (t3[4]=="intermedio")
            cantidad_intermedio= cantidad_intermedio+1
        else
            cantidad_senior= cantidad_senior+1
        end
        
        if(t1[4]=="junior")
            bono1 = cantidad_junior*(0.25+t1[5])
        elsif (t1[4]=="intermedio")
            bono1 = cantidad_intermedio*(0.05)+t1[5]*10 + 500
        else
            bono1 = (100+t1[5]*10)*cantidad_senior
        end
        
        if(t2[4]=="junior")
            bono2 = cantidad_junior*(0.25+t2[5])
        elsif (t2[4]=="intermedio")
            bono2 = cantidad_intermedio*(0.05)+t2[5]*10 + 500
        else
            bono2 = (100+t2[5]*10)*cantidad_senior
        end
        
        if(t3[4]=="junior")
            bono3 = cantidad_junior*(0.25+t3[5])
        elsif (t3[4]=="intermedio")
            bono3 = cantidad_intermedio*(0.05)+t3[5]*10 + 500
        else
            bono3 = (100+t3[5]*10)*cantidad_senior
        end
        
        return (bono1+bono2+bono3)/3
        
    end
    
    def trabajador_gana_mas

        if(t1[3]>t2[3] && t1[3]>t3[3])
            return t1[3]
        elsif(t2[3]>t1[3] && t2[3]>t3[3])
            return t2[3]
        else
            return t3[3]
    end
    
end



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

# Desarrollar el programa tomando en consideración que cada empleado es registrado con su DNI, nombre y apellido, sueldo básico y AFP a la que pertenecen. En el caso de las horas extras se tomará en cuenta que cada hora extra se paga a 5.0 soles la hora. 

# Elaborar un método que permita el cálculo de las horas extras de cada trabajador Elaborar un método que permita el cálculo de los descuentos de cada trabajador 
# Elaborar un método que permita el cálculo de del sueldo neto del trabajador 
# Elaborar un método que permita el cálculo de la planilla total de la empresa.

class Trabajador
    
    def initialize dni,nombre,apellido,sueldo_base,afp
        @dni = dni
        @nombre = nombre
        @apellido = apellido
        @sueldo_base = sueldo_base
        @afp = afp
    end
    
    def imprimir_datos_trabajador 
        array = Array.new
        t1 = Array.new
        t1.push(@dni)
        t1.push(@nombre)
        t1.push(@apellido)
        t1.push(@sueldo_base)
        t1.push(@afp)

        
        t2 = Array.new
        t2.push(@dni)
        t2.push(@nombre)
        t2.push(@apellido)
        t2.push(@sueldo_base)
        t2.push(@afp)

        
        t3 = Array.new
        t3.push(@dni)
        t3.push(@nombre)
        t3.push(@apellido)
        t3.push(@sueldo_base)
        t3.push(@afp)
        
        array.push(t1)
        array.push(t2)
        array.push(t3)
        
        return array
    end
    
    
end
