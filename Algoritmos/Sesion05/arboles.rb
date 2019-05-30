$arbol = nil

#insercion recursiva
def insertar(nodo, valor)
    
    if($arbol == nil)
      $arbol = [nil, valor, nil]
      return
    end

    if(valor < nodo[1])
      if(nodo[0] == nil)
        nodo[0] = [nil, valor, nil]
        return
      else
        insertar(nodo[0], valor)
      end
    else
      if(nodo[2] == nil)
        nodo[2] = [nil, valor, nil]
        return
      else
        insertar(nodo[2], valor)
      end
    end
  
end

#insercion no recursiva
def insertarArbol(valor)

  if($arbol == nil)
    $arbol = [nil, valor, nil]
    return
  end

  nodo = $arbol
  while true
    if(valor < nodo[1])
      if(nodo[0]==nil)
        nodo[0] = [nil, valor, nil]
        return
      end
      nodo = nodo[0]
    else
      if(nodo[2]==nil)
        nodo[2] = [nil, valor, nil]
        return
      end
      nodo = nodo[2]
    end
  end

end

#impresion
def recorrerPreorden(nodo)
  if(nodo != nil)
    print nodo[1]
    recorrerPreorden(nodo[0])
    recorrerPreorden(nodo[2])
  end
end

def recorrerInorden(nodo)
  if(nodo != nil)
    recorrerInorden(nodo[0])
    print nodo[1]
    recorrerInorden(nodo[2])
  end
end

def recorrerPosorden(nodo)
  if(nodo != nil)
    recorrerPosorden(nodo[0])
    recorrerPosorden(nodo[2])
    print nodo[1]
  end
end

def existeValor(nodo, valor)
  if(nodo == nil)
    return false
  end
  if(nodo != nil)
    if(nodo[1] == valor)
      return true
    elsif(valor<nodo[1])
      return existeValor(nodo[0], valor)
    else
      return existeValor(nodo[2], valor)
    end
  end
end

def buscarNivel(nodo, valor)
  if(nodo != nil)
    if(nodo[1] == valor)
      return 1
    elsif(valor<nodo[1])
      return buscarNivel(nodo[0], valor) + 1
    else
      return buscarNivel(nodo[2], valor) + 1
    end
  end
end

def obtenerNivel(arbol, valor)

end

#insertarArbol(4)
#insertarArbol(2)
#insertarArbol(5)
#insertarArbol(1)
#insertarArbol(3)
#insertarArbol(6)

insertar($arbol,4)
insertar($arbol,2)
insertar($arbol,5)
insertar($arbol,1)
insertar($arbol,3)
insertar($arbol,6)


recorrerPreorden($arbol)
puts ""
recorrerInorden($arbol)
puts ""
recorrerPosorden($arbol)
puts ""

puts buscarNivel($arbol, 2)
puts existeValor($arbol, 5)