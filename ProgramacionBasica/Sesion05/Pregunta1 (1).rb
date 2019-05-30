
def diasDePrestamo(tipoUsuario)
  if(tipoUsuario=="Empresa Regular")
    return 7
  elsif(tipoUsuario=="Empresa Vip")
    return 15
  elsif(tipoUsuario=="Prospecto")
    return 5
  end
end

def incrementoDiario(tipoUsuario)
  if(tipoUsuario=="Empresa Regular")
    return 4.5
  elsif(tipoUsuario=="Empresa Vip")
    return 7.0
  elsif(tipoUsuario=="Prospecto")
    return 9.5
  end
end

def moraInicial(tipoUsuario)
  if(tipoUsuario=="Empresa Regular")
    return 5
  elsif(tipoUsuario=="Empresa Vip")
    return 10
  elsif(tipoUsuario=="Prospecto")
    return 15
  end
end

def calcularValorTotalMora(tipoUsuario,diasLibroPrestamo)
  
  excesoConMora = diasLibroPrestamo - diasDePrestamo(tipoUsuario) - 1
  
  incremento = incrementoDiario(tipoUsuario)/100.00
  inicial = moraInicial(tipoUsuario)
  mora = inicial

  if(excesoConMora>0)
    for i in 0..excesoConMora
        mora = mora*(1+incremento)
    end
  end

  return mora.round(1)

end

#--- zona de test ----

def test_diasDePrestamo
    print validate(7, diasDePrestamo("Empresa Regular")) 
    print validate(15, diasDePrestamo("Empresa Vip")) 
    print validate(5, diasDePrestamo("Prospecto")) 
end

def test_incrementoDiario
    print validate(4.5, incrementoDiario("Empresa Regular"))
    print validate(7.0, incrementoDiario("Empresa Vip"))
    print validate(9.5, incrementoDiario("Prospecto"))
end

def test_moraInicial
    print validate(5, moraInicial("Empresa Regular"))
    print validate(10, moraInicial("Empresa Vip"))
    print validate(15, moraInicial("Prospecto"))
end

def test_calcularValorTotalMora
  print validate(6.50, calcularValorTotalMora("Empresa Regular",13))
  print validate(5.00, calcularValorTotalMora("Empresa Regular",6))
  print validate(15.00, calcularValorTotalMora("Empresa Vip",21))
  print validate(25.90, calcularValorTotalMora("Prospecto",11))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_diasDePrestamo
  test_incrementoDiario
  test_moraInicial
  test_calcularValorTotalMora
  puts " "
end

test