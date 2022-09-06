#para añadir un rango uso ..
numero (1..10)

#uso u7n iterador para que me imprima uno a uno
(1..20).each do |numero|
    puts numero
end
#para avanzar de dos en dos uso step 
#modifico el numero para avanzar en los parentesis
(1..20).step(2).each do |numero|
    puts numero
end
#tambien funciona con letras 
('a'..'z').each do |letra|
    print letra+" ,"
end
#los rangos no son arreglos para convertirlo uso to_a
