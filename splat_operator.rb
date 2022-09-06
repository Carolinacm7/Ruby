#con * 
#realizaremos un arreglo que salude a gente
def hola_gente (*personas)
    personas.each {|persona| puts "hola #{persona}"}
end
hola_gente "Uriel","Coco","Raul","Pablo"
=begin
resultado=
hola Uriel
hola Coco
hola Raul
hola Pablo
=end
#convierto un arreglo en una lista

def hola_gente (mensaje,*personas)
    personas.each {|persona| puts "#{mensaje} #{persona}"}
end
#el primer arguemento lo toma como un mensaje 
hola_gente"Hey hola ", "Uriel","Coco","Raul","Pablo"
=begin
resultado=
Hey hola  Uriel
Hey hola  Coco
Hey hola  Raul
Hey hola  Pablo
=end
#arreglo a argumentos o listas 
def hola_gente (mensaje,*personas)
    personas.each {|persona| puts "#{mensaje} #{persona}"}
end
nombres = ["Uriel","Coco","Raul","Pablo"]
hola_gente"Hey hola ",*nombres