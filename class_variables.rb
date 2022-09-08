  #variable de instancia
class Video
    #variable de instancia
    @type ="video/mp4"

end

#variables de clases 
class Video
    #variable de clase
    @@type ="video/mp4"

def self.type_desde_clase
    p @@type
end
#definimos un objeto al nivel del objeto 
def type_desde_objeto
    p @@type
end

end

Video.type_desde_clase
Video.new.type_desde_objeto