require 'debug'
module MyModule
  GOODMOOD = "happy"
  BADMOOD = "grumpy"

 def greet
   return "I'm #{GOODMOOD}. How are you?"
 end

 def MyModule.greet
   return "I'm #{BADMOOD}. How are you?"
 end
end

# Para usar un método normal de dentro del módulo primero hay que crear una clase que contenga el módulo
class MyClass
  include MyModule

 def sayHi
   puts( greet )
 end

end

ob = MyClass.new
binding.break
ob.sayHi
puts(ob.greet)
