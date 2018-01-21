puts "Hello World"
isInt = false
depth = 0
while !isInt
	puts "Please enter how deep to calculate the triangle: "
	depth = $stdin.gets.chomp.to_i
	if depth > 0
		isInt=true
	else
		puts "That couldn't be read as a valid integer value!"
	end

end
puts depth
