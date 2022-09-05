=begin 
ciclos Each, Upto, Downto, Times
iterador 

***Each***
metodo que incluye internamente un ciclo
iterador each
acepta un bloque de código y lo ejecuta por cada elemento de la lista
recorre un rango 
=end
(1..10).each { 
|i| print i 
print "\n" 
}
#le doy un numero inical en donde quiero que inicie hasta el numero que quiera llegar 
1.upto(10) do |i|
    puts i
end
#|| va cambiando dependiendo del elemento que se integre
#va ejecutando elemento por elemento 
calificacion = %w[10 7 8 9 5 8 10]

suma = 0

calificacion.each do |calificacion|
puts "Ahora la calificacion vale #{calificacion}"
end

#para verificar la posicion donde esta utilizo with_index
calificacion.each_with_index do |calificacion,posicion|
    puts "En la posicion #{posicion} tenemos: #{calificacion}"
end

#realizo la suma para generar promedio
calificacion.each_with_index do |calificacion,posicion|
    suma += calificacion.to_i
end
puts "el promedio de tus calificaciones es: #{suma/ calificacion.length}"
#Upto

#downto 
#cuenta regresiva de mayor a menor 
10.downto(1){ 
    |i| print i 
    print "\n" 
    }

10.downto(1) do |i|
    puts i
end
#times
# simpre empieza en cero 
#el primer valor es las veces que se va a repetir 
10.times{ 
    |i| print i 
    print "\n" 
    }
    
10.times do |i|
    puts "me ejecutare 10 veces"
end 