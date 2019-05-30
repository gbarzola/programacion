
def calcularPorcentaje(tipoLuchador, componente)
  if(tipoLuchador=="Orbita")
  	  if(componente=="Ataque")
  		return 30
	  elsif(componente=="Defensa")
	  	return 20
	  elsif (componente=="Habilidad")
	  	return 50
	  end
  elsif(tipoLuchador=="Puño")
  	  if(componente=="Ataque")
  		return 60
	  elsif (componente=="Defensa")
	  	return 15
	  elsif (componente=="Habilidad")
	  	return 25
	  end
  elsif(tipoLuchador=="Laboratorio")
  	  if(componente=="Ataque")
  		return 45
	  elsif (componente=="Defensa")
	  	return 35
	  elsif (componente=="Habilidad")
	  	return 20
	  end
  end
end

def determinarProbabilidadVencer(contendiente, retador)
if(contendiente=="Orbita")
  	  if(retador=="Orbita")
  		return "Ambos"
	  elsif(retador=="Puño")
	  	return "Retador"
	  elsif (retador=="Laboratorio")
	  	return "Contendiente"
	  end
  elsif(contendiente=="Puño")
  	  if(retador=="Puño")
  		return "Ambos"
	  elsif(retador=="Orbita")
	  	return "Contendiente"
	  elsif(retador=="Laboratorio")
	  	return "Retador"
	  end
  elsif(contendiente=="Laboratorio")
  	  if(retador=="Laboratorio")
  		return "Ambos"
	  elsif(retador=="Puño")
	  	return "Contendiente"
	  elsif(retador=="Orbita")
	  	return "Retador"
	  end
  end
	 
end

def calcularPuntosCaracteristica(puntajePelea, tipoLuchador, caracteristica)
	porcentaje = calcularPorcentaje(tipoLuchador, caracteristica)
	puntos = puntajePelea*porcentaje*1.0/100
	return puntos
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