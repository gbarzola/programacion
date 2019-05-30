
#Ejercicio 1 Desarrollar un programa recursivo que permita calcular el factorial de un numero N --- 5! = 5*4! ó f(x) = x*f(x-1)
def factorial(x)
if(x==0)
return 1
else
return x*factorial(x-1)
end
end

#Ejercicio 2 - Desarrollar un programa recursivo que permita obtener el resultado de elevar un numero N a una potencia p --- Np =N*Np-1 ó f(n,p) = n*f(n,p-1)
def potencia (n,p)
if (p==0)
return 1
else
return n*potencia(n,p-1)
end
end

#Ejercicio 3 - Desarrollar un programa recursivo que permita obtener el resultado de multiplicar dos números usando sumas sucesivas --- (5*4=5+5*3) ó f(x,y) = x+f(x,y-1)
def multiplicacion(x,y)
if (y==0)
return 0
else
return x + multiplicacion(x, y-1)
end
end

#Ejercicio 4 - Desarrollar un programa recursivo que permita obtener el resultado entero de dividir dos números usando restas sucesivas --- (10/3 = 3) ó f(D,d)= 1+f(D-d,d)
def division(x,y)
if (x<y)
return 0
    else
    return 1 + division(x-y,y)
    end
end

#Ejercicio 5 - Desarrollar un programa recursivo que permita determinar si un numero N es primo

def cantDivisores(n,cont)
    if(n==cont)
        return 1
    elsif (n%cont == 0)
        return 1+ cantDivisores(n,cont+1)
    else
        return 0+ cantDivisores(n,cont+1)
    end
end
        

def primo(n)
    cantdiv = cantDivisores(n,1)
    if(cantdiv==2)
        return true
    else
        return false
    end
end

#Ejercicio 11
def sumArreglo(arr)
    if(arr.size==1)
        return arr[0]
    else
        return arr[0] + sumArreglo(arr[1..(arr.size-1)])
    end
end

#Ejercicio 13	Sea un arreglo de números enteros y que contiene N elementos siendo N>=1, devolver el elemento mayor.

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

# Ejercicio 14.  Dado un arreglo de números enteros y que contiene N elementos siendo N>=1, desarrollar un pseudocódigo (o programa) que devuelva verdadero si la suma de la primera mitad de los enteros del arreglo es igual a la suma de la segunda mitad de los enteros del arreglo.

def maxValor(arr)
    
end

def test2
    arr = [1,2,3,4]
    puts "La suma del arreglo es " + sumArreglo(arr).to_s
end

test2

def test
    puts "Factorial :" + factorial(5).to_s #Ejercicio 1
    puts "Potencia :" + potencia(2,5).to_s #Ejercicio 2
    puts "multiplicación :" + multiplicacion(5,4).to_s #Ejercicio 3
    puts "División :" + division(10,3).to_s #Ejercicio 4
    puts "Primo :" + primo(5).to_s #Ejercicio 5
    puts "Maximo :" + maxValor([1,2,33,6,41,2,30]).to_s #Ejercicio 13
end

test