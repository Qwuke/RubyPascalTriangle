def recursivePascal(i, j)
	if j == 0
		return 1
	elsif j == i 
		return 1
	else
		return recursivePascal(i-1, j-1) + recursivePascal(i - 1, j)
	end
end

def putRows(d)
	i = 0
	while i < d
		j = 0 
		while j <= i
			print recursivePascal(i,j).to_s + " "
			$stdout.flush
			j+=1
		end
		puts " "
		i+=1
	end
end

depth = 0
while !(depth > 0)
		print "Please enter a valid integer value for how deep to calculate the triangle: "
		depth = $stdin.gets.chomp.to_i
		$stdout.flush
end

putRows(depth)