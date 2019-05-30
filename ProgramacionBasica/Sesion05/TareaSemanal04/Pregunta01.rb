
# Una empresa desea conocer la opinión del público sobre sus productos que 
# son quesos de cinco tipos: Parmesano, Gouda, Edam, Fresco y Azul. 
# Por ello quiere una aplicación que le permita procesar los datos. 
# A los asistentes se les da unas encuestas donde marcan sus preferencias 
# en un nivel del 1 al 5 donde se ha definido:

#   @tipo_queso = ["Parmesano", "Gouda", "Edam", "Fresco", "Azul"]

#   toma1 = [5,3,5,3,2]


# Se le pide lo siguiente:

# -	Desarrollar un subprograma que determine ¿qué quesos tienen clasificación de 5?
# -	Desarrollar un subprograma que determine ¿qué porcentaje de quesos está por sobre 3 en el puntaje?
# -	Desarrollar un subprograma que permita buscar el nivel de un queso específico.


def buscar_mejores_quesos(nivel,tipo_queso)
    for i in 0..4
        if (nivel[i]==5)
            puts tipo_queso[i] 
        end
    end
end
    
def calcular_quesos_sobre_promedio(nivel)
    sumaT = 0.00
    sumaP = 0.00
    for i in 0..4
        if (nivel[i] > 3)
            sumaP = sumaP + 1
        end
    end
    porcentaje = (sumaP/nivel.size)*100.round(2)
    return porcentaje
end
    
def buscar_nivel_queso_por_tipo(nivel,tipo_queso, nombre_queso)
    for i in 0..4
        if (tipo_queso[i]==nombre_queso)
            puts nivel[i]
        end
    end
end


def test
  
  @tipo_queso = ["Parmesano", "Gouda", "Edam", "Fresco", "Azul"]
  toma1 = [5,3,5,3,2]
  
  puts "Test de prueba del programa"
  puts "---------------------------"
  buscar_mejores_quesos(toma1,@tipo_queso)
  puts "---------------------------"
  puts calcular_quesos_sobre_promedio(toma1)
  puts "---------------------------"
  buscar_nivel_queso_por_tipo(toma1,@tipo_queso,"Edam")

end

test