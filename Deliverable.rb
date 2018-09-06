puts "This game of Super Connect-Four will consist of #ARGV[0] rows and columns"

puts "Here is the current game board:"


#Still need input validation loop here 
v1 = ARGV[0].to_i



(0..v1).each do |i|
	(0..v1-1).each do |j|
		print "."
	end
	puts "."
end
