#encoding:UTF-8
def calculararea(r,h)

end



#--- zona de test ----

def test_calculararea
    print validate(63.76, calculararea(5.0,7.0))
    print validate(43.02, calculararea(4.0,6.0))
    print validate(104.55, calculararea(6.0,10.0))
    print validate(418.19, calculararea(12.0,20.0))
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calculararea
  puts " "
end
test
