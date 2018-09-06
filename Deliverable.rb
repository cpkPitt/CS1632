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

def setGameBoard(v1)
	rows, cols = v1, v1  # your values
	$grid = Array.new(rows, Array.new(cols, ".") )
	#Set arrays for the gameboard, Print statement is just here for test purposes
	#(0..v1).each do |i|
	#	print "#{grid[i]}\n"
	#end
end

#this is the initial board of the game drawn with arbitrary number of rows/columns based on args
def draw(v1)
	(0..v1-1).each do |i|
		(0..v1-2).each do |j|
			print "#{$grid[i][j]}"
		end
		puts "#{$grid[i][v1-1]}"
	end
	print "\n"
end

def directions()
puts "\nEnter Column number where you wish to drop your next piece OR
Enter 'rot' to rotate the board OR
Enter 'flip' to flip the board"
end

def turnX()
	directions()
	puts "\nPlayer X it is your turn. "#(Directions here)
	input()
	turn0()
end
def turn0()
	directions()
	puts "\nPlayer 0 it is your turn. "#(Directions here)
	input()
	turnX()
end

def input()
	input = $stdin.gets
	if 1==1
	
	elsif 2 == 2
	
	else
	
	end
	checkWin()
end

def checkWin()
	if $X == true || $0 == true
		winner()
	end
end

def winner()
	if $X0 == true
		puts "Player X is the Winner!!!"
	else
		puts "Player 0 is the Winner!!!"
	end
	exit
end

#game starts here
setGameBoard(v1)
draw(v1)
turnX()
