def suma (a,b)
    sum = a+b
    return sum
end

def resta(a,b)
    res = a-b
    return res
end

def multiplicacion(a,b)
    return a*b
end

def division(a,b)
    return a/b
end

def potencia(a,b)
    pot = b
    prod = 1
    while (pot>0)
        prod = prod*a
        pot=pot - 1
    end
    return prod
end

def test
    puts "Las operación de suma es : " + suma(5,2).to_s
    puts "Las operación de resta es : " + resta(9,3).to_s
    puts "Las operación de multiplicación es : " + multiplicacion(9,3).to_s
    puts "Las operación de división es : " + division(9,3).to_s
    puts "Las operación de potencia es : " + potencia(9,3).to_s
end
test