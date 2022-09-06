#si multiplico un arreglo me lo duplica 
calificacion = %w[10 7 8 9 5 8 10]
puts calificacion * 2

#si uso join me convierte el arreglo en una cadena 
calificacion = %w[10 7 8 9 5 8 10]
puts calificacion.join("")

#si quiero añadir una coma la pongo dentro de las comillas
#le elimino %W para que me lo tome como numeros
calificacion = %w[10 7 8 9 5 8 10]
puts calificacion.join(",")

#muestra las calificaciones de la menor a la mayor añado sort
calificacion =[10,7,8,9,5,8,10]
puts calificacion.sort

#muestra las calificaciones de la mayor a la menor añado sort.reverse
calificacion =[10,7,8,9,5,8,10]
puts calificacion.sort.reverse

#si quiero buscar un elemento en el areglo uso include?
calificacion =[10,7,8,9,5,8,10]
puts calificacion.include?(10)
#me da true en la consola si sin se encuentra

#me devuelve el primer elemento del arreglo 
calificacion =[10,7,8,9,5,8,10]
puts calificacion.first

#me devuelve el ultimo elemento del arreglo 
calificacion =[10,7,8,9,5,8,10]
puts calificacion.last

#elimina repetidos solo imprime la informacion una vez
calificacion =[10,7,8,9,5,8,10]
puts calificacion.uniq

#para imprimir un elemento random del arreglo uso  sample
calificacion =[10,7,8,9,5,8,10]
puts calificacion.sample
#devuelve una unidad aleatoria