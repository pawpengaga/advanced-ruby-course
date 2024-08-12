# The Book of Ruby - http://www.sapphiresteel.com

puts('IO.foreach...')
IO.foreach("/../../stranger-alien.txt") { |line| print( line ) }

puts("\n\nIO.readlines...")
lines = IO.readlines("/../../stranger-alien.txt")
lines.each{|line| print( line )}
