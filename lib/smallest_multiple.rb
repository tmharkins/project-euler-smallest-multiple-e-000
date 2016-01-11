def smallest_multiple(input)
	x = 1
	num = input - 1
	y = num

	p "start until"
	until y == 2
		prod = input * x
#		prod = 10 * x
		if prod % y == 0
			#divider found, go until down to 3
			y -= 1
		else
			#reset y, increment x and try again
			x += 1
			y = num
		end
	end
	p "smallest multiple = #{prod}"
	return prod
end