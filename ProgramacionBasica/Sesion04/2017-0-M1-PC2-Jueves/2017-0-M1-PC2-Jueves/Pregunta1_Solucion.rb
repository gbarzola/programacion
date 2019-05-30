def determinarnivel(escrito,oral)
  if escrito>95 && oral > 75 then
    nivel=3
  elsif escrito>95 && oral <= 75 then
    nivel=2
  elsif escrito<=95 then
    nivel=1
  end
  return nivel
end

def determinarprecio(escrito,oral)
  nivel=determinarnivel(escrito,oral)
  case nivel
  when 3
    precio=400
  when 2
    precio=250
  when 1  
    precio=150
  end
  puts precio
end


#--- zona de test ----

def test_determinarnivel
    print validate(3, determinarnivel(96,76))
    print validate(2, determinarnivel(96,75))    
    print validate(1, determinarnivel(95,76))    
end

def test_determinarprecio
    print validate(400, determinarprecio(96,76)) 
    print validate(250, determinarprecio(96,75)) 
    print validate(150, determinarprecio(95,76)) 
end

def validate (expected, value)
 expected == value ? "." : ""
end

def test
   
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_determinarnivel
  test_determinarprecio
  puts " "
end
test