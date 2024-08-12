x = 10
y = 20
puts "El valor original de Y: #{y}"

# Nice one liner
if x == 10 then y = 3 unless y == 20 end # Estoy resperata el valor de Y basado en el propio valor de Y

# Bloque con multiples comprobaciones
if x == 10 then y = 3
elsif x == 5 then y = 4
else y = 5
end
puts y
