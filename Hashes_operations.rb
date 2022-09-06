#cuantos elementos tiene mi diccionario o hashes
lampara ={0 => "encendido", 1 => "apagado", 2 => "fundido"}
puts lampara.length
#resultado  = 3 
#tambien se puede realizar con size
lampara ={0 => "encendido", 1 => "apagado", 2 => "fundido"}
puts lampara.size
#resultado  = 3 
#saber si se encuentra esa llave en el hashes
lampara ={0 => "encendido", 1 => "apagado", 2 => "fundido"}
puts lampara.has_key?(2)
#resutaltado = true 
lampara = { "0":"encendido", "1":"apagado", "2":"fundido" }
puts lampara.has_key?(:"2")
#resutaltado = true (si se encuentra) si no es (false)
#saber si se encuentra ese valor en el hashes
lampara = { "0":"encendido", "1":"apagado", "2":"fundido" }
puts lampara.has_values?(:"fundido")
#resutaltado = true (si se encuentra) si no es (false)
#para solo tener las claves se usa el metodo keys
lampara ={0 => "encendido", 1 => "apagado", 2 => "fundido"}
puts lampara.keys
=begin 
resultado=
0
1
2
=end
#con metodo values me devuelve solo los valores
lampara ={0 => "encendido", 1 => "apagado", 2 => "fundido"}
puts lampara.values
=begin 
resultado=
encendido
apagado
fundido
=end
#para eliminar toda la informacion de hashes metodo = clear
lampara ={0 => "encendido", 1 => "apagado", 2 => "fundido"}
puts lampara.clear
#resultado {}
#para evaluar que el hashes esta vacio metodo emty?
lampara ={0 => "encendido", 1 => "apagado", 2 => "fundido"}
puts lampara.clear
puts lampara.empty?
#si es correcto que esta vacio resultado=true
#para eliminar solo una posicion metodo delete 
lampara ={0 => "encendido", 1 => "apagado", 2 => "fundido"}
puts lampara.delete(2)
puts lampara
#resultado =  {0=>"encendido", 1=>"apagado"}

#para saber un dato en que llave se encuentra uso key
tutor ={nombre: "Uriel", edad: "23", cursos: "10"}
puts tutor.key("Uriel")
#resultado nombre

#para invertir los valores las llaves=valores y valores=llaves
lampara ={0 => "encendido", 1 => "apagado", 2 => "fundido"}
puts lampara.invert
#resultado = {"encendido"=>0, "apagado"=>1, "fundido"=>2}
tutor ={nombre: "Uriel", edad: "23", cursos: "10"}
puts tutor.invert
#resultado = {"Uriel"=>:nombre, "23"=>:edad, "10"=>:cursos}

#si quiero unir dos hashes por que tengo mas informacion se una merge
tutor ={nombre: "Uriel", edad: "23", cursos: "10"}
user_info ={apellido: "Hernandez",segundo_apellido:"Camacho"}
puts tutor.merge(user_info)
#resultado=
#{:nombre=>"Uriel", :edad=>"23", :cursos=>"10", :apellido=>"Hernandez", :segundo_apellido=>"Camacho"}