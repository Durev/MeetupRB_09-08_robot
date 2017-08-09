class Robot

	attr_accessor :coordinates, :bearing

	def initialize
		@coordinates = [0, 0]
		@bearing = :north
	end

	def orient(arg)
		puts arg
	end

end
