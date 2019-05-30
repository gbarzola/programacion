# Una entidad financiera “SUDAMERIS” requiere de un programa orientado a objetos para controlar 
# las operaciones de sus clientes, de retiro y depósito.

# Cada cliente deberá inscribirse con los siguientes datos: DNI nombre, email y tipo de sexo.
# Los datos de una cuenta son número de cuenta, y saldo.
# Considerar que un cliente puede tener más de una cuenta de ahorros y solo pueden estar en soles.

# Desarrolle las clases necesarias y sus relaciones y realice lo siguiente:

# a.	Registre dos clientes cada uno con dos cuentas bancarias. (3 puntos)
# b.	Desarrolle un método que permita registrar un depósito de
#       dinero a una cuenta bancaria dado un número de cuenta (2 ptos.)
# c.	Desarrolle un método que permita realizar un retiro de un monto
#       dado un número de cuenta, considera que procede si existe el saldo suficiente en la cuenta. (2 ptos.)
# d.	Desarrollo un método que genere un listado de todos clientes y sus respectivos saldos. (3ptos.)

class Cliente

    attr_accessor :dni, :nombre, :email, :sexo

    def initialize (dni,nombre,email,sexo)
        @dni = dni
        @nombre = nombre
        @email = email
        @sexo = sexo
    end
    
    def registra_cliente
        array = Array.new
        array(@dni).push
        array(@nombre).push
        array(@email).push
        array(@sexo).push
    end
end

class Cuenta

    attr_accessor :numero_cuenta, :saldo, :cliente, :moneda

    def initialize(numero_cuenta,saldo,cliente,moneda)
        @numero_cuenta = numero_cuenta
        @saldo = saldo
        @cliente = cliente
        @moneda = moneda
    end
    
end

class Financiera

    attr_accessor :arreglo_cuentas
    
    def initialize
        @arreglo_cuentas = [ ]
    end
    
    def buscar_cuenta(numero_cuenta)
        for p in arreglo_cuentas
            if p.numero_cuenta == numero_cuenta
                return true
            end
        end
        return false
    end
    
    def registrar_cuenta(cuenta)
        if buscar_cuenta(cuenta.numero_cuenta)
            puts "No se registra duplicados o datos no validos"
        else
            arreglo_cuentas.push(cuenta)
        end
    end
    
    def registrar_deposito(numero_cuenta, monto)
		flag_cuenta = false
		for p in arreglo_cuentas
			if p.numero_cuenta == numero_cuenta
			    if p.saldo > monto
			        p.saldo = p.saldo + monto
			        flag_cuenta = true
			    else
			       puts "Saldo insuficiente"  
			    end
			end
		end
		if flag_cuenta == false
			puts "Número de cuenta incorrecto"
	    end        
    end

    def registrar_retiro(numero_cuenta, monto)
		flag_cuenta = false
		for p in arreglo_cuentas
			if p.numero_cuenta == numero_cuenta
			    if p.saldo > monto
			        p.saldo = p.saldo - monto
			        flag_cuenta = true
			    else
			       puts "Saldo insuficiente"  
			    end
			end
		end
		if flag_cuenta == false
			puts "Número de cuenta incorrecto"
	    end        
    end

	def lista_clientes
		for p in arreglo_cuentas
			puts "#{p.cliente.dni} #{p.cliente.nombre} #{p.cliente.email} #{p.cliente.sexo} #{p.numero_cuenta} #{p.saldo} #{p.moneda}"
		end
	end

end


cliente1 = Cliente.new(70334052,"Gerard Barzol Salva","ggg@gmail.com","M")
cliente2 = Cliente.new(70343066,"Luco Barzol Salva","lll@gmail.com","M")
cuenta1 = Cuenta.new("9999999", 400.00, cliente1,"PEN")
cuenta2 = Cuenta.new("8888888", 150.00, cliente1,"PEN")
cuenta3 = Cuenta.new("7777777", 300.00, cliente2,"PEN")
cuenta4 = Cuenta.new("6666666", 200.00, cliente2,"PEN")

financiera = Financiera.new
financiera.registrar_cuenta(cuenta1)
financiera.registrar_cuenta(cuenta2)
financiera.registrar_cuenta(cuenta3)
financiera.registrar_cuenta(cuenta4)
puts " "
puts "Registro de clientes :"
puts " "
financiera.lista_clientes
puts " "
puts "Deposito en cuenta 9999999 de S/.20.00:"
puts " "
financiera.registrar_deposito("9999999", 20.00)
financiera.lista_clientes
puts " "
puts "Retiro en cuenta 8888888 de S/.50.00:"
puts " "
financiera.registrar_retiro("8888888", 50.00)

financiera.lista_clientes