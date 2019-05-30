#encoding:UTF-8
def calcularnumero(dia,mes,año)

end



#--- zona de test ----

def test_calcularnumero
    print validate(10, calcularnumero(31,7,1970))
    print validate(23, calcularnumero(24,3,1967))
    print validate(7, calcularnumero(16,1,2006))
    print validate(6, calcularnumero(19,1,2002))
    print validate(7, calcularnumero(23,6,1994))
end


def validate (expected, value)
 expected == value ? "." : "F"
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularnumero
  puts " "
end
test
