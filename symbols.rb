cadena="uriel"
cadena.capitalize!
puts cadena# resultado = Uriel
#un simbolo es una cadena inmutable (no se puede modificar)
#un simbolo inicia con :
cadena=:uriel
cadena.capitalize!
puts cadena
# resultado = genera error simbolos inmutables
#aun que las cadenas son iguales ruby crea dos objetos 
cadena ="Uriel"
cadena2 ="uriel"
#los simbolos comparten el mismo id  si tiene la misma informacion
#si el objeto ya existe ruby recicla el simbolo anterior por eso tienen el mismo id 
#asi la variable se llame diferente 
simbolo = :Uriel
simbolo2 = :Uriel
#verificaciones de id 
puts cadena.object_id
#resultado = 60
puts cadena2.object_id
#resultado = 80 
puts simbolo.object_id
#resultado = 1126628
puts simbolo2.object_id
#resultado = 1126628
=begin
cuando debo utilizar simbolos
1. cuando no necesito modificar el string 
2. cuando no necesito los metosdodel string
3. los simbolos se usan como nombres 
4. se usa en los hashes
5. cuando neceseciot que no se duplique un valor 
=end