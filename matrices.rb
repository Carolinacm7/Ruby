#cantidad de dimensiones:2
#cuando hay mas de un arreglo es una matriz
#los arreglos deben tener la misma cantidad de elementos 
arreglo  = [[1,2,3],[1,2,3]]
#para que ruby sepa que es una matriz añadimos una clase
#importo la clase
requiere 'matrix'
matriz = Matrix[[1,2,3],[1,2,3]]
puts matriz
#podemos integrar cada uno de los elementos de la matriz
matriz.each do |i| 
    puts i
end 
#para que me de la info diagonal 
requiere 'matrix'
matriz = Matrix[[1,8,3],[5,2,2],[5,2,2]]
#visualmente la matriz se veria asi
=begin 
[
1 8 3
5 2 2
5 2 2
]
=end
matriz.each(:diagonal) do |i| 
    puts i
end 
#el resultado seria 122
#para imprimir los elementos de abajo  de la matriz
matriz.each(:strict_lower) do |i| 
    puts i
end 
#resultado 522
#para imprimir los elementos de arriba de la diagonal 
matriz.each(:strict_upper) do |i| 
    puts i
end 