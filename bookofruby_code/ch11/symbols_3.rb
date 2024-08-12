# The Book of Ruby - http://www.sapphiresteel.com

def thetalker(arg)
   print("Big sister says: " << arg)
end

the_complete_method_name_omg = method(:thetalker)

# Tras haber llamado su referencia completa dentro del símbolo, ahora tenemos un método entero dentro de una variable ._.
# Sabemos que es el método como tal porque especifica que viene de la clase Object
puts(the_complete_method_name_omg) #<Method: Object#thetalker(arg) c:/Users/Erick Rivera/Desktop/trabajo/tecya/Ruby Avanzado/bookofruby_code/ch11/symbols_3.rb:3>

# Es reconocido por su clase y todo
puts("#{the_complete_method_name_omg.class}")

#Y puede ser llamado usando .call()
the_complete_method_name_omg.call("Hola, T I L I N E S")
