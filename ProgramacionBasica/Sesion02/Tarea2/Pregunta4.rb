#encoding:UTF-8
def calcularganancia(litros,precio)

end



#--- zona de test ----

def test_calcularganacia
    print validate(286.66, calcularganancia(155.0,7.0))
    print validate(686.92, calcularganancia(400.0,6.5))
    print validate(871.86, calcularganancia(600.0,5.5))
    print validate(2663.14, calcularganancia(1200.0,8.4))
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularganacia
  puts " "
end
test
