#bloque de sentencias agrupadas
[1,2,3,4,5,6].each do |number|
    puts number
end
#funciona igual que el de arriba
[1,2,3,4,5,6].each {|number|puts number}

#impares 
impares =[1,2,3,4,5,6].select do |number|
    number %2 != 0
end
#los bloques retornan valores 
#puede recibir uno o varios argumentos 
#con el metodo .each_with_index

impares =[1,2,3,4,5,6].select do |number|
    number %2 != 0
end

["Uriel","Eduardo","Marines","Luis"].each_with_index do |nombre,index|
puts "#{index}.-#{nombre}"
end
=begin
resultado=
0.-Uriel
1.-Eduardo
2.-Marines
3.-Luis
=end

#formas para agrupar codigo 
#bloques o procedimientos 
#lambdas, blocks, procedures
#podemos modificar objetos ya existentes 
class Array
def iterar
    self.each_with_index do |n,i|
    self[i] = yield(n)
end 
end
end
  
arreglo = [1,2,3]
#para elevar al cuadrado 
arreglo.iterar do |n|
    n**2
end
for i in arreglo
    puts i
end
#resultado = 
#1
#4
#9

#para que sume en cada uno de los valores solo cambio la operacion 
class Array
    def iterar
    self.each_with_index do |n,i|
    self[i] = yield(n)
end 
end
end

arreglo = [1,2,3]

arreglo.iterar do |n|
n+2
end
for i in arreglo
    puts i
end

#resultado 
#3
#4
#5