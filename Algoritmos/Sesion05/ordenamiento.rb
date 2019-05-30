#$arreglo = [9,23, 45, 12, 18, 33]
$arreglo = ["g","a", "d", "z", "c", "h"]

def intercambioDirecto
	indMayor = $arreglo.size-1
	intercambio=true
	while intercambio == true
		intercambio=false
		for i in 0..indMayor-1
			if ($arreglo[i]>$arreglo[i+1])
				valor=$arreglo[i]
				$arreglo[i]=$arreglo[i+1]
				$arreglo[i+1]=valor
				intercambio=true
			end
		end
	end	
end

def ordenarPorNombre(nombres)
	$arreglo = nombres
	intercambioDirecto
	return $arreglo
end

def test
	#intercambioDirecto
	#puts $arreglo
	#nombres = ["Roxana", "Mariana", "Susana", "Ana"]
	#puts ordenarPorNombre(nombres)
	palabra = ["p","a","l","a","b","r","a"]
	puts ordenarPorNombre(palabra)
end
#test

def obtenerNombre(nota, notas, nombres)
	for i in 0..notas.size-1
		if(nota == notas[i])
			return nombres[i]
		end
	end
	return ""
end

def ordenarNotas
	notas = [15, 12, 16, 20]
	nombres = ["a","b","c","d"]

	$arreglo = [15, 12, 16, 20]
	intercambioDirecto
	notasOrdenadas = $arreglo #obtengo las notas ordenadas

	nombresOrd = Array.new
	for i in 0..notasOrdenadas.size-1
		nombre = obtenerNombre(notasOrdenadas[i], notas, nombres)
		nombresOrd.push(nombre)
	end

	return nombresOrd
end

puts ordenarNotas



