def crearArbol
	raiz = [nil, 9, nil]
	#nivel 1
	hoja5 = [nil, 5, nil]
	hoja16 = [nil, 16, nil]
	raiz[0] = hoja5
	raiz[2] = hoja16
	#nivel 2
	hoja11 = [nil, 11, nil]
	hoja23 = [nil, 23, nil]
	hoja16[0] = hoja11
	hoja16[2] = hoja23
	return raiz
end

def preorden(raiz)
	if(raiz!=nil)
		print raiz[1]
		print " "
		preorden(raiz[0])
		preorden(raiz[2])	
	end
end

def inorden(raiz)
	if(raiz!=nil)
		inorden(raiz[0])
		print raiz[1]
		print " "
		inorden(raiz[2])
	end
end

def postorden(raiz)
	if(raiz!=nil)
		postorden(raiz[0])
		postorden(raiz[2])
		print raiz[1]
		print " "
	end
end

def maximo(v1,v2)
	if(v1>v2)
		return v1
	else
		return v2
	end
end

def altura(raiz)
	if(raiz==nil)
		return 0
	end
	return 1 + maximo(altura(raiz[0]), altura(raiz[2]))
end

def maximoValor(raiz)
	if(raiz==nil)
		return 0
	end
	return maximo3valores(maximoValor(raiz[0]), raiz[1], maximoValor(raiz[2]))
end

def cantidadHojas(raiz)
	if(raiz==nil)
		return 0
	end
	if(raiz!=nil && raiz[0] == nil && raiz[2] == nil)
		return 1
	end
	return cantidadHojas(raiz[0]) + cantidadHojas(raiz[2])
end


def test
	arbol = crearArbol
	#preorden(arbol)
	#puts ""
	#inorden(arbol)
	#puts ""
	#postorden(arbol)
	puts cantidadHojas(arbol)
end
test


