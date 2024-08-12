# The Book of Ruby - http://www.sapphiresteel.com

module MagicObject
	attr_accessor :power
end

module Treasure
	attr_accessor :value
	attr_accessor :owner
end

class Weapon
	attr_accessor :attack
end

class Sword < Weapon
  include Treasure
  include MagicObject

  attr_accessor :name
end

# Nueva clase añadida, tiene los métodos de Treasure
class Jewel
	include Treasure
	attr_accessor :stone
end

s = Sword.new
s.name = "Master Sword"
s.attack = "high"
s.value = 1000
s.owner = "Melody Dwarf"
s.power = "Glows in pressence of evil."

puts(s.name)
puts(s.attack)
puts(s.value)
puts(s.owner)
puts(s.power)

# Instancia y ejecución de la nueva clase
j = Jewel.new
j.stone = "Sapphire"
j.value = 500
j.owner = "The Ancient Sea Creature"

puts j.stone
puts j.value
puts j.owner
