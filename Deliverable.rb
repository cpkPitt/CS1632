color 02
puts "\nThis game of Super Connect-Four will consist of #{ARGV[0]} rows and columns"

puts "\nHere is the current game board:\n "


#Still need input validation loop here 
v1 = ARGV[0].to_i


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

