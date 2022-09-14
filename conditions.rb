=begin 
CONDICIONALES
Los dos tipos de números más comunes en Ruby son:

*Enteros: números sin dígitos detrás del separador decimal 
(números enteros). Los ejemplos son -6, 0, 1, 25y .976500000
Integer son los números son precisos a una unidad entera

*Números de punto flotante: números con cero o más dígitos detrás
del separador decimal. Los ejemplos son -2.4, 0.1, 3.14y .16.9840251024.0
Float tienen una precisión fraccionaria 

*Integer#to_f: Coaccionar a un nuevo flotador

*Float#ceil: Redondea al entero más cercano

*Float#floor: Redondea hacia abajo al entero más cercano

*Float#round: Redondear al entero más cercano

*Float#to_i: Truncar al entero más cercano
=end
#recibir dos numeros de un usuario 
numero_uno = gets.chomp.to_i
numero_dos = gets.chomp.to_i
#imprime en cosola dependiendo si es verdadera o falsa 
if numero_uno > numero_dos && numero_dos < numero_uno
    puts "#{numero_uno} es mayor que  #{numero_dos}"
elsif numero_uno == numero_dos
    puts "ambos numeros son iguales "
else
    puts " #{numero_uno} es menor que #{numero_dos}"
end

#amenos que se usa solo en una linea es el contrario al if ejm 
edad = gets.chomp.to_i
unless edad >=18
    puts "No eres mayor de edad, no puedes pasar"
end

#imprime en cosola dependiendo el caso
#se añade rango con dos puntos 
edad = gets.chomp.to_i

case edad
when 0..11 then print "es un infante"
when 12..17 then print "es un adolecente"
when 18..29 then print "es un joven"
when 30..59 then print "es un adulto"
when 60..150 then print " es un adulto mayor"
else print "error en la variable"
end

#ciclo for 
for i in(1..10)
    print i
    print \n
end

break #para romper el ciclo
next #se pasa un paso del ciclo
redo #para crear un ciclo infinito 