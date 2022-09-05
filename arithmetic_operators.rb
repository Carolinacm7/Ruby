#operadores Aritmeticos 

#para sacar el residuo de una division
#chomp para eliminar salto de linea
numero =gets.chomp
#get me trae una cadena lo modifico para que sea un numero 
numero = numero.to_i
#obtension de residuo % porcentaje o modulo 
#de la division de numero y 2
residuo = numero % 2
#imprimo segun el resultado 
if residuo ==0
    puts "#{numero}es par "
end 

