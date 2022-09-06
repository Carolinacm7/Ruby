#parametros con nombres para saber a que me refiero 
def hola(nombre:"",edad:0)
if edad > 30
    puts "Hola señor #{nombre}"
elsif edad < 30
    puts "Hola joven #{nombre}"
end 
end
hola(nombre:"Uriel", edad:23)
#no genra error si no pongo ningun valor por que esta por default