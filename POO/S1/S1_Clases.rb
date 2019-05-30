class Alumno
    
    def initialize codigo,nombre,nota1,nota2
        @codigo = codigo
        @nombre = nombre
        @nota1 = nota1
        @nota2 = nota2
    end
    
    def promedio 
        nota = (@nota1 + @nota2)/2
        return nota
    end
    
    def promedio2
        (@nota1 + @nota2)/2
    end
    
end

def test
  puts "Test de prueba del programa"
  puts "---------------------------"
  alumno1 = Alumno.new "u201632232","Gera",15,16
  alumno2 = Alumno.new "u201632232","Gera",15,16  
  puts alumno1.promedio
  puts alumno2.promedio2
end

test