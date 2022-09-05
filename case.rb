# case 
#calificacion de 1 a 10 
print("Dame tu calificacion (1-10) ")

calificacion = gets.chomp.to_i

if calificacion == 10 || calificacion == 10 
    puts "¡Muy bien!"
elsif calificacion == 8
    puts "¡bien! pero puedes mejorar"
elsif calificacion == 7
    puts "sabemos uqe lo puedes hacer mejor"
elsif calificacion == 6
    puts "No estas horriblemente mal, pero casi"
else 
    puts"u.u"
end
#como seria el mismo codigo pero con case 
case calificacion
when 10
    puts "Muy bien"
when 9
    puts "Muy bien"
when 8 
    puts "puedes mejorar"
when 7
    puts "sabemos uqe lo puedes hacer mejor"
when 6
    puts "No estas horriblemente mal, pero casi"
else
    puts"u.u"
end
#se pude rescribir de la sig manera 
puts case calificacion
#puedo añadir mas de un valor separando con una ,
when 10,9
    "Muy bien"
when 9
    "Muy bien"
when 8 
    "puedes mejorar"
when 7
    "sabemos uqe lo puedes hacer mejor"
when 6
    "No estas horriblemente mal, pero casi"
else
    "u.u"
end