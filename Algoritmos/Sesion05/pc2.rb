# Ordenar de mayor a menor un vector de N elementos, 
# cada uno de los cuales es un registro con los campos día, mes y año
# con el siguiente formato: “DD/MM/AAAA”

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

def obtenerNombre(fecha, dia, mes, anio)
	for i in 0..dia.size-1
		if(fecha == dia[i])
			return mes[i]
		end
	end
	return ""
end


def ordenarNotas
	dia = [15, 12, 16, 20]
	mes = [01,06,05,05]
	anio = [2010,1989,2015,2000]
	nombres = ["15/01/2010","12/06/1989","16/05/2015","20/05/2000"]

	$arreglo = [20100115, 19890612, 20150516, 20000520]
	intercambioDirecto
	fechaOrdenada = $arreglo #obtengo las notas ordenadas

	nombresOrd = Array.new
	for i in 0..fechaOrdenada.size-1
		nombre = obtenerNombre(fechaOrdenada[i], dia, mes, anio)
		nombresOrd.push(nombre)
	end

	return nombresOrd
end

puts ordenarNotas
