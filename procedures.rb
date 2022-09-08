#Proc no es un objeto 
#pueden ser almacenados en variables y pasados como objetos 
#un metodo puede recibir solo un bloque 
def hola &block
    puts block.class.name 
    block.call
end
hola {puts "yeeeppp"}
#pero el metodo  recibe multiples Proc
#puedo recibir los que yo quiera
def hola proc1 , proc2
    proc1.call
    proc2.call
end
proc1 = Proc.new{puts "Hola proc1"}
proc2 = Proc.new{puts "Hola proc2"}
#por defecto se usa bloques 
#pero proco se puede usar cuando se necesite renviar un bloque a otros objetos
#o cuando se necesite mas de un bloque en un metodo 
#los bloques son mas rapidos que los Proc
hola(proc1,proc2)
#procedures agrupan a los bloques para que se puedan usar mas de una vez
#al contrario de los bloques que son una solucion de una vez
class Array
    #iterar va arecibir como elemento un bloque 
    def iterar(bloque)
    self.each_with_index do |n,i|
#vamos aremplazar cada elemeto con lo que el bloque ejecute
    self[i] = bloque.call(n)
end 
end
end

arreglo = [1,2,3]
#vamos a crear un nuevo procedimiento 
#con la palabra reservada proc
#despues de crear el proc añadimos el bloque 
elevarCuadrado =Proc.new do |n|
    n**2
end
#para visaulizar 
#arreglo,metodo(parametro)
arreglo.iterar(elevarCuadrado)
for i in arreglo 
puts i 
end
