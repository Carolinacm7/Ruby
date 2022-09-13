#cracion arreglo vacio 
arreglo []
=begin
%w
atajo para escribir un array de cadenas separadas por espacios
en lugar de comas y sin comillas
=end

arreglo_uno = %w[1 40 'strings']

#añadir informacion a la derecha en el array 
#puede almacenar cualquier tipo de valor
arreglo_uno << 'hola'

print arreglo_uno

#para quye me imprima en la consola el primer elemento 
print arreglo_uno = %w[1 40 'strings'] [0]
#para quye me imprima en la consola el ultimo elemento 
print arreglo_uno = %w[1 40 'strings'] [-1]

#recorrido de arreglos 
#map modifica cada uno de los arreglos 
ejemplo = [1,2,3,4,5,6]
#pasa por cada valor y le suma una unidad
otro = ejemplo.map { |i| i+1 }
for i in otro
puts i 
end 
#para que solo imprima los numeros pares 
ejemplo = [1,2,3,4,5,6]
#pasa por cada valor y le suma una unidad
#select filtra la informacion 
#imprime los numeros pares 
otro = ejemplo.select {|numero| numero % 2 == 0 }
for i in otro
puts i 
end 


