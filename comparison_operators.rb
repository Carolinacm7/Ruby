#operadores de comparacion 
=begin 
si la operacion es correcta sale true ejm
el de la izquierda sea mayor que el de la derecha  
mayor > menor 
=end 
10>5
true
#el de la derecha sea mayor que el de la izquierda
10<5
true
=begin
si los dos valores son iguales da falso 
si le pongo la opcion <= arrojaria verdadero ejm 
=end
5 <= 5 
10 >= 10
#por que 5 y 5 son iguales y dice si es menor o igual que 
true 
=begin
operador de comparacion combinado 
comparacion entre dos objetos 
devulve 3 posibles valores
si ambos son iguales devuelve 0
=end
10 <=> 10 
0
#si el 1 es mayor que el 2 devuelve 1
20 <=> 10
1
#si el 2 es mayor que el 1 devuelve -1

=begin
operador de igualdad 
cuando ambos comparadores son iguales 
=end
10 == 10
#tambien es posible pasar objetos 
"hola" == "hola"

#para comparar que son del  mismo tipo sea i, f ,s
1.eql?(1.0)
true 
=begin
la interrogacion final compara que tengan el mismo valor y 
que sean del mismo tipo

para verificar que un elemento es copia de otro elemento 
conservarian el mismo object id 
=end
"hola".object_id
#verifico que numero de id tiene el objeto 
#para verificar se usa equal para saber si es una copia 
"hola".equal?("hola")

#operador de diferencia 
20 =! 10