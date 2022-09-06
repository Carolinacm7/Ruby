#cuando llegue al limite deja de ejecutar 
playlist = ["first song","second song","third song"]
playing=true
#contador
index_song = 0
#miestras que index_song sea menor que la cantidad de canciones 
while (index_song < playlist.length) && playing
    puts"reproduciendo  #{playlist[index_song]}"
    
    index_song += 1
    
    #si nos manda 0, hace stop si no sigue reproduciendo
    print "coloca 0 para detener la reproduccion: "
    respuesta = gets().chomp.to_i

    playing= respuesta != 0
end

#el inverso de while es until como seria con while
numero_magico = 20

print "adivina el numero magico: "
numero_usuario = gets().chomp.to_i

while numero_usuario != numero_magico
    print "incorrecto.adivina otra vez: "
    numero_usuario = gets().chomp.to_i
end

puts "felicidades, ¡adivinaste!"

#ahora con until que sig hasta que 
numero_magico = 20

print "adivina el numero magico: "
numero_usuario = gets().chomp.to_i

until numero_usuario == numero_magico
    print "incorrecto.adivina otra vez: "
    numero_usuario = gets().chomp.to_i
end

puts "felicidades, ¡adivinaste!"

#do while
numero = 2

begin 
    numero =gets().chomp.to_i
end while numero < 0