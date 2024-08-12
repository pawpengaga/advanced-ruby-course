# The Book of Ruby - http://www.sapphiresteel.com

words = ["hello", "world", "goodbye", "mars" ]
numbers = [1,2,3,4,5,6,7,8,9,10]

startTime = Time.new
puts( "Start: %10.9f" % startTime )

# En Ruby, un hilo es un objeto, se crea con Thread.new
wordsThread = Thread.new{
	words.each{ |word| puts( word ) }
}

numbersThread = Thread.new{
	numbers.each{ |number| puts( number ) }
}

# Para unir dos hilos, que compartan cosas como el tiempo en este caso, se usa t.join
[wordsThread, numbersThread].each{ |t| t.join }

endTime = Time.new
puts( "End: %10.9f" % endTime.to_f )
totalTime = endTime-startTime
puts( "Total Time: %10.9f" % totalTime.to_f )
