#
class X
    def initialize()
    end
    def x 
    puts "X"
        def y 
            puts "Y"
        end
        def z
            puts "Z"
        end
    end
end

obj = X.new
obj.x 
