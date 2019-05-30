# a.	Un programa recursivo que permita obtener el mayor dígito de un número entero determinado (5 puntos)

def convierteNumArray(num)
    arreglo = Array.new
    	while (num>0)
		    residuo = num%10
		    num = num/10
		    arreglo.push(residuo)
		end
	
	return arreglo
end

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

def test2
    numero = 15799
    miArreglo = convierteNumArray(numero)
    puts "El maximo valor es " + maxValor(miArreglo).to_s #Ejercicio 13
end

test2