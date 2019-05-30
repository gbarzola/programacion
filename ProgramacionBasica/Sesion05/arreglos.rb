
def sumaArreglo(notas)
    n = tamanioArreglo(notas)
    suma = 0
    for i in 0..n-1
        suma = suma + notas[i]
    end
    
    return suma
end

def tamanioArreglo(notas)
    return notas.size
end

def sumaNotasPares(notas)
    n = tamanioArreglo(notas)
    suma = 0
    
    for i in 0..n-1
        if (notas[i]%2 == 0)
            suma = suma + notas[i]
        end
    end
    
    return suma
end

def sumaNotasImpares(notas)
    return sumaArreglo(notas) - sumaNotasPares(notas)
end

def cantidadNotasMayores(notas)
    n = tamanioArreglo(notas)
    contador = 0
    for i in 0..n-1
        if(notas[i]>10)
            contador = contador + 1
        end
    end
    return contador
end

def calcularPromedioNotas(notas)
    return sumaArreglo(notas)/(notas.size-1)
end

def calcularNotaMayor(notas)
    n = tamanioArreglo(notas)
    mayor = 0
    for i in 0..n-1
        if(notas[i]>mayor)
            mayor = notas[i]
        end
    end
    return mayor
end

def test
    
notas = [15,12,12,11,18,12,15,14,17,13]

puts "Tamaño es : " + tamanioArreglo(notas).to_s
puts "Suma de Arreglo es : " + sumaArreglo(notas).to_s
puts "Suma de Impares : " + sumaNotasImpares(notas).to_s
puts "Suma de Pares : " + sumaNotasPares(notas).to_s
puts "Cantidad Notas > 10 : " + cantidadNotasMayores(notas).to_s
puts "Promedio de Notas : " + calcularPromedioNotas(notas).to_s
puts "Nota Mayor : " + calcularNotaMayor(notas).to_s

end

test