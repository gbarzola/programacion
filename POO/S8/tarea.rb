# Pregunta 1

# Una Universidad Local le ha pedido a usted realice la generación de las boletas de pago de un mes de sus alumnos matriculados en el ciclo 2017-2.
# Los datos de cada alumno son código, nombre, dni, número de créditos inscritos y categoría.
# Existen las siguientes categorías y sus respectivos costos por crédito:

# Cat Costo del crédito
# A	     70
# B	    100
# C	    120
# D	    150
# E	    200

# Adicionalmente si el alumno tiene un promedio ponderado mayor a 17 se le otorga un descuento del 35% de descuento.

# Para tales objetivos se necesita:

# 1.	Registrar a cada alumno
# 2.	Mostrar un reporte de todos los alumnos inscritos con sus respectivos montos de pago bruto, su descuento y neto.

# ** Aplique Polimorfismo y Factory para la solución de problema.

class Alumno
    attr_accessor :codigo, :nombre, :dni, :numero_de_creditos, :categoria
    def initialize(codigo,nombre,dni,numero_de_creditos,categoria)
        @codigo,@nombre,@dni,@numero_de_creditos,@categoria = codigo,nombre,dni,numero_de_creditos,categoria
    end
    
    def calcular_pago_bruto
        
    end
    
    def calcular_pago_neto
        
    end
    
end

class Administrador
    def initialize
        @arreglo_envios = []
    end
    def registrar (envio)
        if envio == []
            "El arreglo esta vacio"
        else
            arreglo_envios.push(envio)
        end
    end
end