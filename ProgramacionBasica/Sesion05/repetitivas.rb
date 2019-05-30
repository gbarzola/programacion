=begin

sumar los numeros que van desde empezando en 1 y terminando en 10

Probando estructura repetitiva NO CONDICIONADA

FOR var IN 1..10

=end

def sumatoria
	suma = 0
	for var in 1..10
		suma = suma + var
	end
	return suma
end

#puts sumatoria

def imprimir
	for var in 1..1000
		puts var
	end
end

#puts imprimir

def sumatoria(valorIn, valorFin)
	suma = 0
	for var in valorIn..valorFin
		suma = suma + var
	end
	return suma
end

#puts sumatoria(36,1997)

def sumatoriaPares(rangoInicial, rangoFinal)
	suma = 0
	for i in rangoInicial..rangoFinal
		if (i%2==0)
			suma = suma + i
		end
	end
	return suma		
end

#puts sumatoriaPares(5,15)	

def determinarCantMultiplos7(rangoInicial,rangoFinal)
	cant = 0
	for i in rangoInicial..rangoFinal
		if (i%7==0)
			cant = cant + 1
		end
	end
	return cant 
end

#puts determinarCantMultiplos7(1,14)

