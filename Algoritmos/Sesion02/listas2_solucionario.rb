def imprimirLista(lista)
	cont = 0
	nodoTemp = lista
	while(nodoTemp!=nil)
		puts nodoTemp[0]
		nodoTemp = nodoTemp[1]
	end
end

def tamanioLista(lista)
	cont = 0
	nodoTemp = lista
	while(nodoTemp!=nil)
		nodoTemp = nodoTemp[1]
		cont = cont + 1
	end
	return cont
end

def insertarInicio(lista,valor)
	nn = [valor, nil]
	nn[1] = lista
	if(lista !=nil)
		lista = nn
	end
	return nn
end

def insertarFin(lista, valor)
	if(lista == nil)
		lista = [valor, nil]
	else
		nodoTemp = lista
		while(nodoTemp[1]!=nil)
			nodoTemp = nodoTemp[1]
		end
		nodoTemp[1] = [valor, nil]
	end
	return lista
end

def crearLista(arreglo)
	ultimo = nil
	lista = nil
	tamanio = arreglo.size
	for i in 0..tamanio-1
		nn = [arreglo[i], nil]
		if(lista == nil)
			lista = nn
			ultimo = nn
		else
			ultimo[1] = nn
			ultimo = nn
		end
	end
	return lista
end

def eliminarInicio(lista)
	if(lista == nil)
		return nil
	else
		siguiente = lista[1]
		lista = siguiente
		return siguiente
	end
end

def eliminarFinal(lista)
	if(lista == nil || lista[1] == nil)
		return nil
	else
		nodo = lista
		anterior = nil
		while(nodo[1]!=nil)
			anterior = nodo
			nodo = nodo[1]
		end
		anterior[1] = nil
		
		return lista
	end
end

def determinarMaximo(lista)
	nodoTemp = lista
	maximo = 0
	while(nodoTemp!=nil)
		if(maximo<nodoTemp[0])
			maximo = nodoTemp[0]
		end
		nodoTemp = nodoTemp[1]
	end
	return maximo
end

def crearArreglo(lista)
	arreglo = Array.new
	nodoTemp = lista
	while(nodoTemp!=nil)
		arreglo.push(nodoTemp[0])
		nodoTemp = nodoTemp[1]
	end
	return arreglo
end

def sumarListas(lista1, lista2)
	arr1 = crearArreglo(lista1)
	arr2 = crearArreglo(lista2)
	for i in 0..arr1.size-1
		arr2[i] = arr1[i] + arr2[i]
	end
	return crearLista(arr2)
end

def sumarListas2(lista1, lista2)
	arreglo = Array.new
	while(lista1!=nil)
		 valor = lista1[0] + lista2[0]
		 lista1 = lista1[1]
		 lista2 = lista2[1]
		 arreglo.push(valor)
	end
	return crearLista(arreglo)
end

def eliminarPosicion(lista,pos)
	anterior = nil
	nodo = lista
	if (pos==1)
		lista=lista[1]
	else
		cont = 1
		while(nodo[1]!=nil)
		anterior = nodo
			nodo = nodo[1]
			cont = cont + 1
			if (cont==pos)
				anterior[1] = nodo[1]
				return lista
			end
		end
	end
	return lista
end

def listaNParesDiv10(cantidad, num)
	lista = nil
	cont = 0

	while(cont < cantidad)
		if(num%2 == 1)
			num = num + 1
		else 
			num = num + 2
		end
		if(num%10 != 0)
			lista = insertarFin(lista,num)
			cont = cont+1
		end
	end
	return lista
end


def listaDigitosImpares(num)
	
	#lista = nil
	arreglo = Array.new
	
	while (num>0)
		residuo = num%10
		num = num/10
		if (residuo%2!=0)
			arreglo.unshift(residuo)
			#lista = insertarInicio(lista,residuo)
		end
		
	end

	return crearLista(arreglo)
end




def test
	n1 = [1,nil]
	n2 = [2,nil]
	n3 = [3,nil]
	n1[1] = n2
	n2[1] = n3
	#lista 1
	lista = n1
	imprimirLista(lista)
	lista = insertarInicio(lista, 0)
	puts "el tamanio: " + tamanioLista(lista).to_s
	#lista 2
	lista2 = nil
	lista2 = insertarInicio(lista2, 20)
	puts "el tamanio: " + tamanioLista(lista2).to_s	

	lista3 = crearLista([10,20,30])
	imprimirLista(lista3)

	puts "eliminando inicio lista3"
	lista3 = eliminarInicio(lista3)
	imprimirLista(lista3)

	puts "eliminando fin lista"
	lista = eliminarFinal(lista)
	imprimirLista(lista)

	puts "insertando al Fin"
	insertarFin(lista, 14)
	insertarFin(lista, 5)
	imprimirLista(lista)
	puts "el tamanio: " + tamanioLista(lista).to_s
	puts "el maximo valor es " + determinarMaximo(lista).to_s

	puts "suma listas"
	lista4 = crearLista([1,2,3,4])
	lista5 = crearLista([10,20,30,40])
	puts sumarListas(lista4,lista5)
	
	
	puts "eliminar lista en la posicion 3"
	puts "Lista actual :"
	lista6 = crearLista([5,6,44,69])
	imprimirLista(lista6)
	puts "Nueva lista :"
	lista7 = eliminarPosicion(lista6,3)
	imprimirLista(lista7)
	
	puts "lista de digitos impares"
	lista8 = listaDigitosImpares(4591726)
	imprimirLista(lista8)
	
	puts "lista enlazada generada de numeros pares no divisbles por 10 es :"
	lista9 = listaNParesDiv10(6,12)
	imprimirLista(lista9)
	

end
test

