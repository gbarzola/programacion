#Calcula Maximo valor de arreglos

def maxValor(arr)
    if(arr.size==1)
        return arr[0]
    else
        max = maxValor(arr[1..(arr.size-1)])
        if(arr[0]>max)
            return arr[0]
        else
            return max
        end
    end
end

#Calcula Minimo valor de arreglos

def minValor(arr)
    if(arr.size==1)
        return arr[0]
    else
        min = minValor(arr[1..(arr.size-1)])
        if(arr[0]<min)
            return arr[0]
        else
            return min
        end
    end
end

#Calcula Suma arreglo

def sumArreglo(arr)
    if(arr.size==1)
        return arr[0]
    else
        return arr[0] + sumArreglo(arr[1..(arr.size-1)])
    end
end

#Calcula promedio arreglo

def promArreglo(arr)
    if(arr.size==1)
        return arr[0]
    else
        return (arr[0] + sumArreglo(arr[1..(arr.size-1)]))/arr.size
    end
end


    



def test
    
    arr1 = [10,10,10,10,10,5,5,5,5,5]
    arr2 = [10,10,10,10,10,5,5,5,5,5]
    
    # Compara arreglo suma
    puts "=========================="
    puts "Suma Campo Cantidad (Columna05) :" + sumArreglo(arr1).to_s
    puts "Suma Campo Cantidad (Columna08) :" + sumArreglo(arr2).to_s
    puts "=========================="
    puts " "
    
    if (sumArreglo(arr1) == sumArreglo(arr2))
        puts "Suma de Arreglos Iguales"
    end
    
    # Compara arreglo promedio
    puts "=========================="
    puts "Promedio Campo Cantidad (Columna05) :" + promArreglo(arr1).to_s
    puts "Promedio Campo Cantidad (Columna08) :" + promArreglo(arr2).to_s
    puts "=========================="
    puts " "
    
    if (promArreglo(arr1) == promArreglo(arr2))
        puts "Promedio de Arreglos son Iguales"
    end
    
    # Compara maximo valor
    puts "=========================="
    puts "Promedio Campo maxValor (Columna05) :" + maxValor(arr1).to_s
    puts "Promedio Campo maxValor (Columna08) :" + maxValor(arr2).to_s
    puts "=========================="
    puts " "
    
    if (maxValor(arr1) == maxValor(arr2))
        puts "Maximo valores son Iguales"
    end

    # Compara minimo valor
    puts "=========================="
    puts "Promedio Campo minValor (Columna05) :" + minValor(arr1).to_s
    puts "Promedio Campo minValor (Columna08) :" + minValor(arr2).to_s
    puts "=========================="
    puts " "
    
    if (minValor(arr1) == minValor(arr2))
        puts "Minimo valores son Iguales"
    end
    
    if (sumArreglo(arr1) == sumArreglo(arr2) && promArreglo(arr1) == promArreglo(arr2) && maxValor(arr1) == maxValor(arr2) && minValor(arr1) == minValor(arr2) )
        puts "Nuestros 4 filtros son verdaderos, por lo tanto garantizamos que la actividad de inspeccion operativa manual es correcta"
    end
end

test