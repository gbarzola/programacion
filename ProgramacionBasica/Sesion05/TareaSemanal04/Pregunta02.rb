
# Existe en la actualidad un desconcierto entre los habitantes de la ciudad de Iquitos derivado
# de la administración del lote 192. Para ello, el gobierno decidió realizar una consulta popular
# para determinar si la empresa Petro-Perú debe o no administrar dicho lote. 
# La consulta popular tuvo dos preguntas:

# * ¿Está usted de acuerdo con que la empresa Petro-Perú administre el lote 192?
# o Las respuestas posibles fueron
# * S= para SI
# * N= para NO.
# * X= para NO SABE/NO OPINA
# * ¿Cuál alternativa le parece que debe aplicarse en este conflicto?
# o Las respuestas posibles fueron:
# * 1=Que se otorgue la administración total a Petro-Perú.
# * 2=Que se otorgue la administración total a otra empresa.
# * 3=Que se administre de forma equitativa por ambas empresas
# * 0=No sabe/No opina
# Todas las respuestas fueron incluidas en un array de respuestas para cada pregunta.
#
# De acuerdo a ello, se le solicita lo siguiente:
#
# a) Desarrollar un subprograma que determine los porcentajes que obtuvieron cada una 
#    de las respuestas posibles y cuál de ellas obtuvo el mayor porcentaje.
#
# Por ejemplo: 
# si la respuesta SI obtuvo el 50.0%,
# el NO obtuvo 30.0%,
# No sabe/No opina NS obtuvo el 20.0,
# entonces se debe dar como resultado el siguiente:
    # [50.0,30.0,20.0,"SI"]
#
# b) Elaborar un subprograma que permita determinar ¿qué porcentaje de aceptación tuvo la consulta popular? Determinada por la cantidad de personas que respondieron diferente a No sabe/No opina.



def calcularresultadoVeredicto(pregunta1)
    
    sumaS = 0.00
    sumaN = 0.00
    sumaX = 0.00
    
    for i in 0..pregunta1.size-1
        if (pregunta1[i]=='S')
            sumaS = sumaS+1 
        elsif (pregunta1[i]=='N')
            sumaN = sumaN+1 
        else (pregunta1[i]=='X')
            sumaX = sumaX+1 
        end
    end
    
    if (sumaS > sumaN && sumaS > sumaX)
        may='SI'
    elsif (sumaN > sumaS && sumaN > sumaX)
        may='NO'
    else
        may='NS'
    end
            
    
    pS = (sumaS/(sumaS+sumaN+sumaX))*100.round(2)
    pN = (sumaN/(sumaS+sumaN+sumaX))*100.round(2)
    pX = (sumaX/(sumaS+sumaN+sumaX))*100.round(2)
    
    puts '[' + pS.to_s + ',' + pN.to_s + ',' + pX.to_s + ',' + may.to_s + ']'
    
end

def determinaraceptacion(pregunta2)

    suma = 0.00
    n = pregunta2.size
    for i in 0..n-1
        if(pregunta2[i]!="0")
            suma = suma + 1
        end
    end
    
    return (suma/n)*100.round(2)
    
end

def test

    respuestas1=["S","S","X","N","N","S","N","X","S","S"]
    
    respuestasb1=["3","1","2","2","3","0","0","2","1","1"]
    
    puts "Test de prueba del programa"
    
    puts "---------------------------"
    
    calcularresultadoVeredicto(respuestas1)
    
    puts "---------------------------"
    
    puts determinaraceptacion(respuestasb1)

end

test