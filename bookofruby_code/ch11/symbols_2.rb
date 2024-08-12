# The Book of Ruby - http://www.sapphiresteel.com

def thePrinter(arg)
   p arg
   # puts( "[class=#{somearg.class}]\n" ) #<= uncomment to verify classes
end


x = 1 # try changing this value to 100 or "hello world"
xsymbol = :x

puts '- Test #1 ------------'
puts'thePrinter(x)'
thePrinter(x)
puts('thePrinter(:x)')
thePrinter(:x)

# Es posible encontrar el valor de la variable X a través del símbolo :x ?

puts '- Test #2 ------------'
puts('thePrinter(eval(:x.id2name))')
thePrinter( eval(:x.id2name)) #SI LO ES ._________________________________________.
thePrinter(eval(:x.to_s)) # .to_s logra el mismo resultado que id2name, el cual es un método de la clase Símbolo
# Eval es un método del Kernel de Ruby, cuando se le pasa un string, en este caso "x", busca por el código una declaración llamada x y devuelve su valor ._.


puts '- Test #3 ------------'
thePrinter(xsymbol) # Hace lo que debe hacer
thePrinter(:xsymbol) # Devuelve lo que se le ha dado
thePrinter(eval(:xsymbol.id2name)) #Se obtiene lo asignado a través de la evaluación, el procedimiento es de obtención no de instanciamiento
thePrinter(eval((eval(:xsymbol.id2name)).id2name)) #Obtenido ese valor, se usa de referencia para encontrar la variable llamada igual que el símbolo

puts '- Test #4 ------------'
method(:thePrinter).call("") #Manera rebuscada de llamar un método refiriendose a el por su símbolo asociado, asumo que lo obtiene usando por detrás el código de arriba. Lo que está entre paréntesis de .call() son los argumentos regulares
method(:thePrinter).call(eval(:x.id2name)) # Se llama como argumento al valor obtenido al evaluar la extracción del valor del simbolo en sí mismo
