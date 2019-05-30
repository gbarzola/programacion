# Pregunta 1
#Una micro-empresa desea llevar el control de su planilla de trabajadores. Actualmente la empresa está conformada por 5 trabajadores.

#Cada trabajador se registrará con su número de DNI, nombre completo, sexo, cantidad de dependientes (esposa más hijos), sueldo bruto, AFP elegida y tiempo de permanencia (en años).

#Se requiere realizar el sueldo neto a pagar cada mes según la siguiente fórmula:
#sueldo_neto = sueldo_bruto – renta_quinta_categoria – descuento_AFP + bono_familiar

#Donde:

#renta_quinta_categoria equivale al 15% del sueldo bruto.

#Para el descuento_AFP, considere que existen 3 AFPs con su respectivo descuento:
#El bono_familiar es un monto equivalente a 100.00 soles por cada dependiente.

#Además, solamente aquellos trabajadores que tienen más de 5 años de permanencia en la empresa tienen derecho a un bono adicional libre de descuentos de 200.00 soles.

#a.  Desarrolle las clases necesarias y sus relaciones. Registre 6 trabajadores. (3 ptos.)
#b.  Desarrollo un método que genere un listado de los trabajadores con todos sus atributos, indicando además el sueldo neto de cada uno. (3 ptos.)
#c.  Desarrolle un método que permita obtener el trabajador con el sueldo neto más alto y el promedio de los sueldos netos. (2 ptos.)
#d.  Desarrolle un método que permita buscar un trabajador por DNI, y que devuelva los datos del mismo incluido su sueldo neto. En caso no se encuentre el trabajador debe indicar “No encontrado”. (2 ptos.)


class Trabajador
    
    attr_accessor :dni, :nombre, :sexo, :cantidad_dependientes, :sueldo_bruto, :afp, :tiempo_permanencia
    
    def initialize dni, nombre, sexo, cantidad_dependientes, sueldo_bruto, afp, tiempo_permanencia
        @dni = dni
        @nombre = nombre
        @sexo = sexo
        @cantidad_dependientes = cantidad_dependientes
        @sueldo_bruto = sueldo_bruto
        @afp = afp
        @tiempo_permanencia = tiempo_permanencia
    end
    
    def imprimir_datos_trabajador 
        array = Array.new
        array.push(@dni)
        array.push(@nombre)
        array.push(@sexo)
        array.push(@cantidad_dependientes)
        array.push(@sueldo_bruto)
        array.push(@afp)
        array.push(@tiempo_permanencia)
        
        return array
    end
    
    def calcular_renta_quinta_categoria
        return 0.15*sueldo_bruto
    end
    
    def calcular_bono_familiar
        return 100*cantidad_dependientes
    end
    
    def descuento_afp
        if(afp==1)
            return 0.11*sueldo_bruto
        elsif (afp==2)
            return 0.12*sueldo_bruto
        else
            return 0.13*sueldo_bruto
        end
    end
    
    def calcular_sueldo_neto
        if (tiempo_permanencia > 5)
            return sueldo_bruto - calcular_renta_quinta_categoria - descuento_afp + calcular_bono_familiar + 200
        else
            return sueldo_bruto - calcular_renta_quinta_categoria - descuento_afp + calcular_bono_familiar
        end
    end

end

class Empresa
    
    attr_accessor :arreglo_trabajadores
    
    def initialize
        @arreglo_trabajadores =[]
    end
    
    def registrar_trabajador(trabajador)
        arreglo_trabajadores.push(trabajador)
    end
    
    def imprimir_lista_trabajadores
        for p in arreglo_trabajadores
            
            puts "Trabajador :  #{p.dni} , #{p.nombre} , #{p.sexo} , #{p.cantidad_dependientes} , #{p.sueldo_bruto} , #{p.afp} "
            puts "Sueldo Neto : S/. #{p.calcular_sueldo_neto}"
        end
    end
    
    def buscar_trabajador_con_mayor_sueldo_neto
        mayor = 0
        for p in arreglo_trabajadores
            if(mayor < p.calcular_sueldo_neto)
                mayor = p.calcular_sueldo_neto
            end
        end
        puts "Mayor sueldo neto : S/. #{mayor}" 
    end
    
    def calcular_promedio_sueldos_netos
        suma = 0
        cont = 0
        for p in arreglo_trabajadores
            suma = suma + p.calcular_sueldo_neto
            cont = cont + 1
        end
        puts "Promedio sueldos netos : S/. #{suma/cont}" 
    end
    
    def buscar_trabajador_segun_dni(dni)
        for p in arreglo_trabajadores
            if (p.dni == dni)
                puts "Trabajador :  #{p.dni} , #{p.nombre} , #{p.sexo} , #{p.cantidad_dependientes} , #{p.sueldo_bruto} , #{p.afp} "
                n = false
            end
        end
        if (n)
            puts "No encontrado"
        end
    end

end

    puts "---------------------------"
    puts "Test de prueba"
    puts "---------------------------"
        
    trabajador1 = Trabajador.new 70442256,"maria","F",4,5000,1,5
    trabajador2 = Trabajador.new 70456256,"luis","M",2,4000,2,7
    trabajador3 = Trabajador.new 70443256,"pablo","M",1,3000,3,2
    trabajador4 = Trabajador.new 70442886,"fatima","F",6,3500,2,8
    trabajador5 = Trabajador.new 70442296,"perla","F",3,5200,3,4
    trabajador6 = Trabajador.new 70442296,"pepe","M",4,4200,1,1
    
    empresa = Empresa.new
    empresa.registrar_trabajador(trabajador1)
    empresa.registrar_trabajador(trabajador2)
    empresa.registrar_trabajador(trabajador3)
    empresa.registrar_trabajador(trabajador4)
    empresa.registrar_trabajador(trabajador5)
    empresa.registrar_trabajador(trabajador6)
    empresa.imprimir_lista_trabajadores
    empresa.buscar_trabajador_con_mayor_sueldo_neto
    empresa.calcular_promedio_sueldos_netos
    empresa.buscar_trabajador_segun_dni(70442886)