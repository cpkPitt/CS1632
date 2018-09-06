puts "\nThis game of Super Connect-Four will consist of #{ARGV[0]} rows and columns"

puts "\nHere is the current game board:\n "

v1 = ARGV[0].to_i
#this is input validation to ensure v1 was nonnegative
def checkArgs(v1)
	raise ArgumentError, "" unless v1 >= 0
end
begin
	checkArgs(v1)
rescue ArgumentError
	puts "This program will only accept a nonnegative number as a valid argument."
	exit
end

#this is the initial board of the game drawn with arbitrary number of rows/columns based on args
def draw(v1)
	(0..v1).each do |i|
		(0..v1-1).each do |j|
			print "."
		end
		puts "."
	end
	print "\n"
end

draw(v1)

#game starts here
puts "Player X it is your turn. (Directions here)"

