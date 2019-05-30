
def calcularPorcentaje(tipoLuchador, componente)
  
	 
end

def determinarProbabilidadVencer(contendiente, retador)

	 
end

def calcularPuntosCaracteristica(puntajePelea, tipoLuchador, caracteristica)
 
end

#--- zona de test ----

def test_calcularPorcentaje
    print validate(30, calcularPorcentaje("Orbita","Ataque")) 
	print validate(15, calcularPorcentaje("Puño", "Defensa")) 
	print validate(20, calcularPorcentaje("Laboratorio", "Habilidad")) 
end

def test_determinarProbabilidadVencer
    print validate("Ambos", determinarProbabilidadVencer("Orbita", "Orbita")) 
	print validate("Retador", determinarProbabilidadVencer("Orbita", "Puño")) 
	print validate("Contendiente", determinarProbabilidadVencer("Laboratorio", "Puño")) 
	print validate("Retador", determinarProbabilidadVencer("Puño", "Laboratorio")) 
end

def test_calcularPuntosCaracteristica
    print validate(3, calcularPuntosCaracteristica(10,"Orbita","Ataque")) 
	print validate(15, calcularPuntosCaracteristica(100,"Puño", "Defensa")) 
	print validate(200, calcularPuntosCaracteristica(1000,"Laboratorio", "Habilidad")) 
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_calcularPorcentaje
  test_determinarProbabilidadVencer
  test_calcularPuntosCaracteristica
  puts " "
  
end
test