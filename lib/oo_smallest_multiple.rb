class SmallestMultiple
	def initialize(input)
		@x = 1
    @input = input
		@num = input - 1
		@y = @num
	end

	def lcm
		until @y == 2
			multiple = @input * @x
			if multiple % @y == 0
				#divider found, go until down to 3
				@y -= 1
			else
				#reset y, increment x and try again
				@x += 1
				@y = @num
			end
		end

		p "smallest multiple = #{multiple}"
		return multiple
	end
end