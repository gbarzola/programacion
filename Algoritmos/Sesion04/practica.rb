

#b.	Un programa recursivo que dado un arreglo de números permita determinar si la suma de la mitad izquierda
# del arreglo es igual que la suma de la mitad derecha de dicho arreglo. (5 puntos)



def sumArreglo(arr)
    if(arr.size==1)
        return arr[0]
    else
        return arr[0] + sumArreglo(arr[1..(arr.size-1)])
    end
end


def sumArregloIzquierda(arr)
    if(arr.size==1)
        return arr[0]
    else
        return arr[0] + sumArreglo(arr[1..(arr.size/2.to_i-1)])
    end
end

def sumArregloDerecha(arr)
    if(arr.size==1)
        return arr[0]
    elsif (arr.size%2==0)
        return sumArreglo(arr) - (arr[0] + sumArreglo(arr[1..(arr.size/2.to_i-1)]))
    else
        return sumArreglo(arr) - (arr[0] + sumArreglo(arr[1..(arr.size/2.to_i)]))
    end
end


def test
    arr = [1,2,2,1]
    
    x1 = sumArregloIzquierda(arr)
    x2 = sumArregloDerecha(arr)
    
    puts "La suma del arreglo es " + sumArreglo(arr).to_s
    puts "La suma del arreglo izquierda es " + x1.to_s
    puts "La suma del arreglo derecha es " + x2.to_s
    if (x1 == x2)
        puts "Son iguales la suma de la derecha y la izquierda"
    else
        puts "Son diferentes"
    end
end

test