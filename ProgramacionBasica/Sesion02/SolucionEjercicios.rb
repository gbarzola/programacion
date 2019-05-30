
#Pregunta 1

# Una  empresa  de venta de autos ofrece planes de crédito para la adquisición de los diferentes modelos de automóviles. 
# La empresa se encuentra en campaña por lo que está otorgando un descuento del 5% del valor del auto, aplicado a todos los modelos. 
# Para el financiamiento del crédito la empresa solicita una cuota inicial del 15% del nuevo valor del auto
# y el saldo restante se debe pagar en 24 mensualidades con un intereses fijo (flat) del 12% en cada cuota.
# La agencia desea saber, en base al precio de un automóvil que el cliente elija, a cuánto asciende el monto de la cuota mensual que el cliente pagaría.
# Considerando que el cliente debe pagar la cuota inicial.

def determinarcuota(precio)
    descuentoCampania = 0.05*precio
    cuotaInicial = 0.15*(precio-descuentoCampania)
    saldoRestante = precio - descuentoCampania - cuotaInicial
    return (saldoRestante/24*1.12).round(2)
end

#Pregunta 2


# Una empresa naviera tiene problemas con las medidas internacionales de su almacén.
# Por ello necesita se desarrolle un programa que permita calcular el número máximo de cajas con productos que pueden introducir en el almacén.
# Se supone que todas las cajas tienen las mismas medidas de largo, ancho y alto expresados en metros (por ejemplo 0.50mt de largo, 0.30mt de ancho y 0.05mt de alto).
# De acuerdo a la capacidad total de cada almacén, se pide desarrollar un programa que permita calcular la cantidad de cajas del mismo tamaño
# que pueden almacenarse solo hasta el 75% del volumen total del almacén.

def determinarcajas(largo,ancho,alto,capacidad)
    volCaja = largo*ancho*alto
    return (capacidad/volCaja).round(2)
end 

# Pregunta 3

# Se necesita un programa para calcular el importe neto que debe pagar a los empleados.
# Se sabe que la boleta de pago consta del sueldo básico, una bonificación del 20% sobre el sueldo básico, pago de horas extras (S/.20.00 por hora extra trabajada),
# una asignación familiar fija de 85 soles. Adicionalmente, se realizan los cálculos de la AFP 
# como descuentos de ley como siguen: 10% para el fondo, 1.2% para seguro, 1.5% comisión, que se calculan sobre el sueldo bruto. 
# Tener en cuenta que la asignación familiar no está afecta a los descuentos de ley. Desarrollar el programa que permita realizar este cálculo

def calcularsueldoneto(basico,horasextras)
    bonificacion = basico*0.2
    pagoHE = horasextras*20
    asignacionFamiliar = 85
    
    sueldoBruto = basico + bonificacion + pagoHE + asignacionFamiliar    

    pagoAFP = 0.10*sueldoBruto + 1.2/100*sueldoBruto + 1.5/100*sueldoBruto
    
    return (sueldoBruto - pagoAFP).round(2)
end


def test
   
  puts "Determinar cuota de pago"
  puts "---------------------------"
  puts determinarcuota(100)
  puts "---------------------------"
  puts " "
  puts "Determinar num. de cajas"
  puts "---------------------------"
  puts determinarcajas(10,10,10,5000)
  puts "---------------------------"
  puts " "
  puts "Calcular sueldo neto"
  puts "---------------------------"
  puts calcularsueldoneto(800,10)
  puts "---------------------------"
  puts " "


end
test
