#las clases padres o base son de las cuales se hereda
class Video
    attr_accessor :title,:duration
end 
#para heredar de otra clase se usa < y despues la clase base
class YouTubeVideo < Video
attr_accessor :youtube_id
end
#creo un nuevo video
yt = YouTubeVideo.new
#le doy un titulo 
yt.title = "Herencia en Ruby"
#imprimo el titulo
puts yt.title
#le puedo asignar un id al video 
yt.youtube_id= "123456789"
#lo imprimo
puts yt.youtube_id

#genralmente las hijas suelen ser una especializacion del padre 
#las ventajas de las herencias es no copiar codigo 
#al modificar el padre tambien modifica el hijo 
#sin las herencia se veria asi el codigo 
class FacebookVideo
    attr_accessor :title
    attr_accessor :duration
    attr_accessor :facebook_id
    attr_accessor :description
end 
class YouTubeVideo
    attr_accessor :title
    attr_accessor :duration
    attr_accessor :youtube_id
    attr_accessor :description
end 
=begin 
haciendo mas lento el programa 
*si se realiza una modificacion tiene que realizarse dos veces 
*al tener mas datos esto aria mas demorado hacer 
una modificacion a las diferentes clases 
con herencia el codigo anterior se realizaria de la sig manera  
=end

#todo lo que es similar lo ponemos en la clase base
class Video 
    attr_accessor :title
    attr_accessor :duration
    attr_accessor :description
end
#solo dejamos en las clases fijas la especificacion que sea solo de la clase 
class FacebookVideo < Video
    attr_accessor :facebook_id
end 
class YouTubeVideo < Video
    attr_accessor :youtube_id
end
#en Rubi solo se puede heredar de una clase padre o superclase 
#solo se puede heredar de una y no de varias como en otros lenguajes 

#sobrescribir un metodo para reprodicir video con etiqueta video
#embebemos el video 

class Video 
    attr_accessor :title
    attr_accessor :duration
    attr_accessor :description
    def embed_video_code
"<video></video>"
    end
end

class FacebookVideo < Video
    attr_accessor :facebook_id
end 
class YouTubeVideo < Video
    attr_accessor :youtube_id
end

puts YouTubeVideo.new().embed_video_code

#sobrescribir un metodo para reprodicir video con etiqueta iframe
#sobreescribimos en el metodo 
# tambien se llama overriding
class Video 
    attr_accessor :title
    attr_accessor :duration
    attr_accessor :description
    def embed_video_code
"<video></video>"
    end
end

class FacebookVideo < Video
    attr_accessor :facebook_id
end 
class YouTubeVideo < Video
    attr_accessor :youtube_id
    def embed_video_code
    "<iframe />"
    end
end

puts YouTubeVideo.new().embed_video_code

#cuando necesitemos hacer uso de la funcionalidad del padre y luego
#hacer otras cosas especificas de la subclase  
class Video 
    attr_accessor :title
    attr_accessor :duration
    attr_accessor :description

    def embed_video_code
        "<video></video>"
    end

    def setup(title)
        @title = title 
    end
end

class YouTubeVideo < Video
    attr_accessor :youtube_id
    def embed_video_code
    "<iframe />"
    end
#sobrescribimos sin borrar lo que hace el padre 
def setup(title)
    #llama al metodo con el mismo nombre pero en la clase padre
    super
    #aqui se añade la informacion extra 
    puts "Algo extra"
end
end
yt = YouTubeVideo.new()
yt.setup("Herencia Ruby")
puts yt.title
#todas las clases heredan de object
#por eso todas las clases contienen un object id
#